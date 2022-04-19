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
}
