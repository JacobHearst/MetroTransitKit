//
//  MetroTransitKit.swift
//
//
//  Created by Jacob Hearst on 8/18/21.
//

import Foundation

public struct MetroTransitClient {
    private let networkService: NetworkService
    private let baseURL = URL(string: "https://svc.metrotransit.org/nextripv2/")!

    public init(networkLogLevel: NetworkLogLevel = .minimal) {
        networkService = NetworkService(logLevel: networkLogLevel)
    }

    public func getAgencies(_ completion: @escaping (Result<[Agency], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponent("agencies"))
        networkService.request(request, as: [Agency].self, completion: completion)
    }

    public func getRoutes(_ completion: @escaping (Result<[Route], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponent("routes"))
        networkService.request(request, as: [Route].self, completion: completion)
    }

    public func getNexTrip(stopID: Int, _ completion: @escaping (Result<NexTripResult, Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponent("\(stopID)"))
        networkService.request(request, as: NexTripResult.self, completion: completion)
    }

    public func getNexTrip(routeID: String,
                           directionID: Int,
                           placeCode: String,
                           _ completion: @escaping (Result<NexTripResult, Error>) -> Void) {

        let url = baseURL
            .appendingPathComponent(routeID)
            .appendingPathComponent("\(directionID)")
            .appendingPathComponent("\(placeCode)")

        networkService.request(URLRequest(url: url), as: NexTripResult.self, completion: completion)
    }

    public func getDirections(routeID: String, _ completion: @escaping (Result<[Direction], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponent("directions").appendingPathComponent(routeID))
        networkService.request(request, as: [Direction].self, completion: completion)
    }

    public func getStops(routeID: String, directionID: Int, _ completion: @escaping (Result<[Place], Error>) -> Void) {
        let url = baseURL
            .appendingPathComponent("stops")
            .appendingPathComponent(routeID)
            .appendingPathComponent("\(directionID)")
        networkService.request(URLRequest(url: url), as: [Place].self, completion: completion)
    }

    public func getVehicles(routeID: String, completion: @escaping (Result<[Vehicle], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponent("vehicles").appendingPathComponent(routeID))
        networkService.request(request, as: [Vehicle].self, completion: completion)
    }
}
