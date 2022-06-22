//
//  Schedule.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct ScheduleAPI {
    let networkService: NetworkService
    var baseURL: URL {
        NetworkService.baseURL.appendingPathComponent("schedule")
    }

    public func getRoutes(completion: @escaping (Result<[RouteListItem], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponent("routes"))
        networkService.request(request, as: [RouteListItem].self, completion: completion)
    }

    public func getRouteDetails(routeURLParam: String, completion: @escaping (Result<RouteDetails, Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponents(["routedetails", routeURLParam]))
        networkService.request(request, as: RouteDetails.self, completion: completion)
    }

    public func getTimetable(routeId: String, scheduleNumber: Int, completion: @escaping (Result<Timetable, Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponents(["timetable", routeId, String(scheduleNumber)]))
        networkService.request(request, as: Timetable.self, completion: completion)
    }

    public func getStopList(routeId: String, scheduleNumber: Int, completion: @escaping (Result<[StopListItem], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponents(["stoplist", routeId, String(scheduleNumber)]))
        networkService.request(request, as: [StopListItem].self, completion: completion)
    }

    public func getStopSchedule(routeId: String,
                                scheduleNumber: Int,
                                boardStop: Int,
                                exitStop: Int,
                                completion: @escaping (Result<StopSchedule, Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponents(["stops", routeId, String(scheduleNumber), String(boardStop), String(exitStop)]))
        networkService.request(request, as: StopSchedule.self, completion: completion)
    }
}

@available(macOS 10.15.0, *)
extension ScheduleAPI {
    public func getRoutes() async throws -> [RouteListItem] {
        let request = URLRequest(url: baseURL.appendingPathComponent("routes"))
        return try await networkService.request(request, as: [RouteListItem].self)
    }

    public func getRouteDetails(routeURLParam: String) async throws -> RouteDetails {
        let request = URLRequest(url: baseURL.appendingPathComponents(["routedetails", routeURLParam]))
        return try await networkService.request(request, as: RouteDetails.self)
    }

    public func getTimetable(routeId: String, scheduleNumber: Int) async throws -> Timetable {
        let request = URLRequest(url: baseURL.appendingPathComponents(["timetable", routeId, String(scheduleNumber)]))
        return try await networkService.request(request, as: Timetable.self)
    }

    public func getStopList(routeId: String, scheduleNumber: Int) async throws -> [StopListItem] {
        let request = URLRequest(url: baseURL.appendingPathComponents(["stoplist", routeId, String(scheduleNumber)]))
        return try await networkService.request(request, as: [StopListItem].self)
    }

    public func getStopSchedule(routeId: String,
                                scheduleNumber: Int,
                                boardStop: Int,
                                exitStop: Int) async throws -> StopSchedule {
        let request = URLRequest(url: baseURL.appendingPathComponents(["stops", routeId, String(scheduleNumber), String(boardStop), String(exitStop)]))
        return try await networkService.request(request, as: StopSchedule.self)
    }
}
