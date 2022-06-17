//
//  RouteLandmarksInput.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct RouteLandmarksInput: Codable {
    public init(route: String?, category: String?, noduplicates: Bool) {
        self.route = route
        self.category = category
        self.noduplicates = noduplicates
    }

    public let route: String?
    public let category: String?
    public let noduplicates: Bool
}
