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
}
