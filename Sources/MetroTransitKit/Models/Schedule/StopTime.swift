//
//  StopTime.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct StopTime: Codable {
    public init(departureTime: String?, placeSequence: Int, commentTag: String?) {
        self.departureTime = departureTime
        self.placeSequence = placeSequence
        self.commentTag = commentTag
    }

    public let departureTime: String?
    public let placeSequence: Int
    public let commentTag: String?
}
