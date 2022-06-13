//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct Departure: Codable {
    public let actual: Bool
    public let tripId: String?
    public let stopId: Int
    public let departureText: String?
    public let departureTime: Int?
    public let description: String?
    public let gate: String?
    public let routeId: String?
    public let routeShortName: String?
    public let directionId: Int
    public let directionText: String?
    public let terminal: String?
    public let scheduleRelationship: String?

    public init(actual: Bool, tripId: String?, stopId: Int, departureText: String?, departureTime: Int?, description: String?, gate: String?, routeId: String?, routeShortName: String?, directionId: Int, directionText: String?, terminal: String?, scheduleRelationship: String?) {
        self.actual = actual
        self.tripId = tripId
        self.stopId = stopId
        self.departureText = departureText
        self.departureTime = departureTime
        self.description = description
        self.gate = gate
        self.routeId = routeId
        self.routeShortName = routeShortName
        self.directionId = directionId
        self.directionText = directionText
        self.terminal = terminal
        self.scheduleRelationship = scheduleRelationship
    }
}
