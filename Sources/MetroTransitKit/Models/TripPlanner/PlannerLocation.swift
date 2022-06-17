//
//  PlannerLocation.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct PlannerLocation: Codable {
    public init(description: String?, point: Point, landmarkid: Int) {
        self.description = description
        self.point = point
        self.landmarkid = landmarkid
    }

    public let description: String?
    public let point: Point
    public let landmarkid: Int
}
