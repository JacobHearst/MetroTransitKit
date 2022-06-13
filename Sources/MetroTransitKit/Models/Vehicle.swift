//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct Vehicle: Codable {
    public let tripId: String?
    public let directionId: Int
    public let direction: String?
    public let locationTime: Int
    public let routeId: String?
    public let terminal: String?
    public let latitude: Float
    public let longitude: Float
    public let bearing: Float
    public let odometer: Float
    public let speed: Float

    public init(tripId: String?, directionId: Int, direction: String?, locationTime: Int, routeId: String?, terminal: String?, latitude: Float, longitude: Float, bearing: Float, odometer: Float, speed: Float) {
        self.tripId = tripId
        self.directionId = directionId
        self.direction = direction
        self.locationTime = locationTime
        self.routeId = routeId
        self.terminal = terminal
        self.latitude = latitude
        self.longitude = longitude
        self.bearing = bearing
        self.odometer = odometer
        self.speed = speed
    }
}
