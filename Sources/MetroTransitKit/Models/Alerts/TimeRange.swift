//
//  TimeRange.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct TimeRange: Codable {
    public init(start: Int, end: Int?) {
        self.start = start
        self.end = end
    }

    public let start: Int
    public let end: Int?
}
