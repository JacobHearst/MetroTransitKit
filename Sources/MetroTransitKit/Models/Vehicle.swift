//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct Vehicle: Codable {
    let tripId: String?
    let directionId: Int
    let direction: String?
    let locationTime: Int
    let routeId: String?
    let terminal: String?
    let latitude: Float
    let longitude: Float
    let bearing: Float
    let odometer: Float
    let speed: Float
}
