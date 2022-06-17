//
//  TripDescriptor.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct TripDescriptor: Codable {
    public let tripId: String?
    public let routeId: String?
    public let directionId: Int
    public let directionText: String?
}
