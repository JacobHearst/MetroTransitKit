//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct Direction: Codable {
    public let directionId: Int
    public let directionName: String?

    public init(directionId: Int, directionName: String?) {
        self.directionId = directionId
        self.directionName = directionName
    }
}
