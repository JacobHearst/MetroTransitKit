//
//  TripPlanner.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct TripPlannerAPI {
    let networkService: NetworkService
    var baseURL: URL {
        NetworkService.baseURL.appendingPathComponent("tripplanner")
    }

    public func getSuggestions(text: String, location: String, completion: @escaping (Result<[Suggestion], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponents(["suggest", text, location]))
        networkService.request(request, as: [Suggestion].self, completion: completion)
    }

    public func findAddress(magicKey: String, completion: @escaping (Result<[FindAddressResponse], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponents(["findaddress", magicKey]))
        networkService.request(request, as: [FindAddressResponse].self, completion: completion)
    }

    public func planTrip(input: PlanTripInput, completion: @escaping (Result<Void, Error>) -> Void) {
        var request = URLRequest(url: baseURL.appendingPathComponent("plantrip"))
        request.httpMethod = "POST"
        do {
            request.httpBody = try JSONEncoder().encode(input)
        } catch {
            completion(.failure(error))
        }

        networkService.request(request) { result in
            switch result {
            case .failure(let err):
                completion(.failure(err))
            case .success(_):
                completion(.success(()))
            }
        }
    }

    public func moreInfo(moreInfo: String, completion: @escaping (Result<Void, Error>) -> Void) {
        var request = URLRequest(url: baseURL.appendingPathComponent("moreinfo"))
        request.httpMethod = "POST"
        request.httpBody = moreInfo.data(using: .utf8)

        networkService.request(request) { result in
            switch result {
            case .failure(let err):
                completion(.failure(err))
            case .success(_):
                completion(.success(()))
            }
        }
    }

    public func serviceNearby(input: ServiceNearbyInput, completion: @escaping (Result<Void, Error>) -> Void) {
        var request = URLRequest(url: baseURL.appendingPathComponent("servicenearby"))
        request.httpMethod = "POST"
        do {
            request.httpBody = try JSONEncoder().encode(input)
        } catch {
            completion(.failure(error))
        }

        networkService.request(request) { result in
            switch result {
            case .failure(let err):
                completion(.failure(err))
            case .success(_):
                completion(.success(()))
            }
        }
    }

    public func nearestLandmark(input: NearestLandmarkInput, completion: @escaping (Result<Void, Error>) -> Void) {
        var request = URLRequest(url: baseURL.appendingPathComponent("nearsetlandmark"))
        request.httpMethod = "POST"
        do {
            request.httpBody = try JSONEncoder().encode(input)
        } catch {
            completion(.failure(error))
        }

        networkService.request(request) { result in
            switch result {
            case .failure(let err):
                completion(.failure(err))
            case .success(_):
                completion(.success(()))
            }
        }
    }

    public func routeLandmarks(input: RouteLandmarksInput, completion: @escaping (Result<Void, Error>) -> Void) {
        var request = URLRequest(url: baseURL.appendingPathComponent("routelandmarks"))
        request.httpMethod = "POST"
        do {
            request.httpBody = try JSONEncoder().encode(input)
        } catch {
            completion(.failure(error))
        }

        networkService.request(request) { result in
            switch result {
            case .failure(let err):
                completion(.failure(err))
            case .success(_):
                completion(.success(()))
            }
        }
    }
}
