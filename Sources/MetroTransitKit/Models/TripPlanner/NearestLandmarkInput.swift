//
//  NearestLandmarkInput.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct NearestLandmarkInput: Codable {
    public init(location: PlannerLocation, category: String?) {
        self.location = location
        self.category = category
    }

    public let location: PlannerLocation
    public let category: String?
}
