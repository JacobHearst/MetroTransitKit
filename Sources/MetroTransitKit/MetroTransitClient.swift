//
//  MetroTransitKit.swift
//
//
//  Created by Jacob Hearst on 8/18/21.
//

import Foundation

public struct MetroTransitClient {
    private let networkService: NetworkService

    public let nexTrip: NexTripAPI
    public let alerts: AlertsAPI
    public let schedule: ScheduleAPI

    public init(networkLogLevel: NetworkLogLevel = .minimal) {
        networkService = NetworkService(logLevel: networkLogLevel)

        nexTrip = NexTripAPI(networkService: networkService)
        alerts = AlertsAPI(networkService: networkService)
        schedule = ScheduleAPI(networkService: networkService)
    }
}
