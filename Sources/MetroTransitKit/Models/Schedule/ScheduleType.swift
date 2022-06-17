//
//  ScheduleType.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct ScheduleType: Codable {
    public init(scheduleTypeName: String?, viewOrder: Int, booking: String?, timetables: [TimetableDetail]?) {
        self.scheduleTypeName = scheduleTypeName
        self.viewOrder = viewOrder
        self.booking = booking
        self.timetables = timetables
    }

    public let scheduleTypeName: String?
    public let viewOrder: Int
    public let booking: String?
    public let timetables: [TimetableDetail]?
}
