//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct NexTripResult: Decodable {
    public let stops: [Stop]?
    public let alerts: [AlertMessage]?
    public let departures: [Departure]?

    public init(stops: [Stop]?, alerts: [AlertMessage]?, departures: [Departure]?) {
        self.stops = stops
        self.alerts = alerts
        self.departures = departures
    }
}
