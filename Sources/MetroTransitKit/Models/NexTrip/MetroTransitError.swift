//
//  File.swift
//  
//
//  Created by Jacob Hearst on 6/8/22.
//

import Foundation

public struct MetroTransitError: Codable {
    public let type: String
    public let title: String
    public let detail: String
    public let instance: String
    public let status: Int
}
