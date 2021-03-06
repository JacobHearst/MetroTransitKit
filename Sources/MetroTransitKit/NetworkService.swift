//
//  NetworkService.swift
//
//
//  Created by Jacob Hearst on 8/18/21.
//

import Foundation

public enum NetworkLogLevel {
    case minimal, verbose
}

struct NetworkService {
    static let baseURL = URL(string: "https://svc.metrotransit.org")!
    var logLevel: NetworkLogLevel

    func request<T : Decodable>(_ urlRequest: URLRequest, as type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        if let body = urlRequest.httpBody, let JSONString = String(data: body, encoding: String.Encoding.utf8) {
            print("Sending request with body:")
            print(JSONString)
        }

        request(urlRequest) { result in
            do {
                switch result {
                case .success(let data):
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase

                    let result = try decoder.decode(type, from: data)
                    completion(.success(result))
                case .failure(let error):
                    completion(.failure(error))
                }
            } catch {
                completion(.failure(error))
            }
        }
    }

    func request(_ urlRequest: URLRequest, completion: @escaping (Result<Data, Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard error == nil else {
                print("Error: \(String(describing: error))")
                completion(.failure(error!))
                return
            }

            guard let content = data else {
                print("Data was nil")
                completion(.failure(NetworkError.nilResponseData))
                return
            }

            let httpStatus = (response as! HTTPURLResponse).statusCode
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase

                if (200..<300).contains(httpStatus) {
                    print("Received response")
                    if logLevel == .verbose {
                        let responseBody = String(data: content, encoding: .utf8)
                        print(responseBody ?? "Couldn't represent response body as string")
                    }

                    completion(.success(content))
                } else {
                    guard let httpError = String(data: content, encoding: .utf8) else {
                        let error = "Failed to create a string from the response data"
                        completion(.failure(NetworkError.decodingError(error: error)))
                        return
                    }

                    print(httpError)
                    let metroTransitErr = try JSONDecoder().decode(MetroTransitError.self, from: content)
                    completion(.failure(NetworkError.httpError(error: metroTransitErr)))
                }
            } catch {
                print(error)
                completion(.failure(error))
            }
        }

        print("Making request to: '\(String(describing: urlRequest.url?.absoluteString))'")
        if logLevel == .verbose {
            if let body = urlRequest.httpBody {
                print(String(data: body, encoding: .utf8) ?? "Couldn't represent request body as string")
            } else {
                print("No body")
            }
        }
        task.resume()
    }
}

@available(macOS 10.15.0, iOS 13.0.0, *)
extension NetworkService {
    func request<T : Decodable>(_ urlRequest: URLRequest, as type: T.Type) async throws -> T {
        try await withCheckedThrowingContinuation { continuation in
            self.request(urlRequest, as: type) { result in
                switch result {
                case .success(let data):
                    continuation.resume(returning: data)
                case .failure(let err):
                    continuation.resume(throwing: err)
                }
            }
        }
    }

    func request(_ urlRequest: URLRequest) async throws -> Data {
        try await withCheckedThrowingContinuation { continuation in
            self.request(urlRequest) { result in
                switch result {
                case .success(let data):
                    continuation.resume(returning: data)
                case .failure(let err):
                    continuation.resume(throwing: err)
                }
            }
        }
    }
}

extension NetworkService {
    enum NetworkError: LocalizedError {
        case invalidUrl
        case httpError(error: MetroTransitError)
        case decodingError(error: String)
        case nilResponseData

        var errorDescription: String? {
            switch self {
            case .invalidUrl:
                return "Tried to assemble an invalid url. Open an issue on the GitHub repo"
            case .httpError(let error):
                return "HTTP Error: \(error.detail)"
            case .decodingError(let error):
                return error
            case .nilResponseData:
                return "Response data was nil"
            }
        }
    }
}
