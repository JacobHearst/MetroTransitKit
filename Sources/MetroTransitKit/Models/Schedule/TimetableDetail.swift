//
//  TimetableDetail.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct TimetableDetail: Codable {
    public init(scheduleNumber: Int, direction: String?, directionId: Int) {
        self.scheduleNumber = scheduleNumber
        self.direction = direction
        self.directionId = directionId
    }

    public let scheduleNumber: Int
    public let direction: String?
    public let directionId: Int
}
