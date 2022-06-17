//
//  Trip.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct Trip: Codable {
    public init(routeLabel: String?, commentTag: String?, stopTimes: [StopTime]?) {
        self.routeLabel = routeLabel
        self.commentTag = commentTag
        self.stopTimes = stopTimes
    }

    public let routeLabel: String?
    public let commentTag: String?
    public let stopTimes: [StopTime]?
}
