//
//  StopBoardExit.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct StopBoardExit: Codable {
    public init(routeLabel: String?,
                  tripComment: String?,
                  boardTime: String?,
                  boardCommend: String?,
                  exitTime: String?,
                  exitComment: String?) {
        self.routeLabel = routeLabel
        self.tripComment = tripComment
        self.boardTime = boardTime
        self.boardCommend = boardCommend
        self.exitTime = exitTime
        self.exitComment = exitComment
    }

    public let routeLabel: String?
    public let tripComment: String?
    public let boardTime: String?
    public let boardCommend: String?
    public let exitTime: String?
    public let exitComment: String?
}
