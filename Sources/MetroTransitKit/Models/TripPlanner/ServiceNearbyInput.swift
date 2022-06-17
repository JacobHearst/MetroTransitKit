//
//  ServiceNearbyInput.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct ServiceNearbyInput: Codable {
    public init(location: PlannerLocation, walkdist: Double, accessible: Bool) {
        self.location = location
        self.walkdist = walkdist
        self.accessible = accessible
    }

    public let location: PlannerLocation
    public let walkdist: Double
    public let accessible: Bool
}
