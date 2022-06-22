//
//  NexTrip.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct NexTripAPI {
    let networkService: NetworkService
    var baseURL: URL {
        NetworkService.baseURL.appendingPathComponent("nextripv2")
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
        let request = URLRequest(url: baseURL.appendingPathComponent(String(stopID)))
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

    public func getDirections(routeId: String, _ completion: @escaping (Result<[Direction], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponents(["directions", routeId]))
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
        let request = URLRequest(url: baseURL.appendingPathComponents(["vehicles", routeID]))
        networkService.request(request, as: [Vehicle].self, completion: completion)
    }
}

@available(macOS 10.15.0, *)
extension NexTripAPI {
    public func getAgencies() async throws -> [Agency] {
        let request = URLRequest(url: baseURL.appendingPathComponent("agencies"))
        return try await networkService.request(request, as: [Agency].self)
    }

    public func getRoutes() async throws -> [Route] {
        let request = URLRequest(url: baseURL.appendingPathComponent("routes"))
        return try await networkService.request(request, as: [Route].self)
    }

    public func getNexTrip(stopID: Int) async throws -> NexTripResult {
        let request = URLRequest(url: baseURL.appendingPathComponent(String(stopID)))
        return try await networkService.request(request, as: NexTripResult.self)
    }

    public func getNexTrip(routeID: String,
                           directionID: Int,
                           placeCode: String) async throws -> NexTripResult {

        let url = baseURL
            .appendingPathComponent(routeID)
            .appendingPathComponent("\(directionID)")
            .appendingPathComponent("\(placeCode)")

        return try await networkService.request(URLRequest(url: url), as: NexTripResult.self)
    }

    public func getDirections(routeId: String) async throws -> [Direction] {
        let request = URLRequest(url: baseURL.appendingPathComponents(["directions", routeId]))
        return try await networkService.request(request, as: [Direction].self)
    }

    public func getStops(routeID: String, directionID: Int) async throws -> [Place] {
        let url = baseURL
            .appendingPathComponent("stops")
            .appendingPathComponent(routeID)
            .appendingPathComponent("\(directionID)")
        return try await networkService.request(URLRequest(url: url), as: [Place].self)
    }

    public func getVehicles(routeID: String) async throws -> [Vehicle] {
        let request = URLRequest(url: baseURL.appendingPathComponents(["vehicles", routeID]))
        return try await networkService.request(request, as: [Vehicle].self)
    }
}
