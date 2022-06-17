//
//  Point.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct Point: Codable {
    public init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }

    public let x: Double
    public let y: Double
}
