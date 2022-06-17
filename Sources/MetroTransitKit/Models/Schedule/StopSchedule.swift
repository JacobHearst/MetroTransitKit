//
//  StopSchedule.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct StopSchedule: Codable {
    public init(departures: [StopBoardExit]?, footnotes: [Footnote]?) {
        self.departures = departures
        self.footnotes = footnotes
    }

    public let departures: [StopBoardExit]?
    public let footnotes: [Footnote]?
}
