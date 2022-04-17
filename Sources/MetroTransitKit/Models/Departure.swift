//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct Departure: Codable {
    let actual: Bool
    let tripId: String?
    let stopId: Int
    let departureText: String?
    let departureTime: Int?
    let description: String?
    let gate: String?
    let routeId: String?
    let routeShortName: String?
    let directionId: Int
    let directionText: String?
    let terminal: String?
    let scheduleRelationship: String?
}
