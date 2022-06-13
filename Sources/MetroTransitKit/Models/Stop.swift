//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct Stop: Codable {
    public let stopId: Int
    public let latitude: Double
    public let longitude: Double
    public let description: String?

    public init(stopId: Int, latitude: Double, longitude: Double, description: String?) {
        self.stopId = stopId
        self.latitude = latitude
        self.longitude = longitude
        self.description = description
    }
}
