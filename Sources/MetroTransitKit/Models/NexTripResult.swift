//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct NexTripResult: Decodable {
    let stops: [Stop]?
    let alerts: [AlertMessage]?
    let departures: [Departure]?
}
