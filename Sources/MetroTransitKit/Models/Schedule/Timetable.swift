//
//  Timetable.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct Timetable: Codable {
    public init(description: String?, timepoints: [Timepoint]?, trips: [Trip]?, footnotes: [Footnote]?) {
        self.description = description
        self.timepoints = timepoints
        self.trips = trips
        self.footnotes = footnotes
    }

    public let description: String?
    public let timepoints: [Timepoint]?
    public let trips: [Trip]?
    public let footnotes: [Footnote]?
}
