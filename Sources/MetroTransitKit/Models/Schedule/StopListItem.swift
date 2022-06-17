//
//  StopListItem.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct StopListItem: Codable {
    public init(stopId: Int, stopName: String?, timepoint: Bool?) {
        self.stopId = stopId
        self.stopName = stopName
        self.timepoint = timepoint
    }

    public let stopId: Int
    public let stopName: String?
    public let timepoint: Bool?
}
