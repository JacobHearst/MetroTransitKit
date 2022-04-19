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
}
