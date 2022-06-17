//
//  RouteListItem.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct RouteListItem: Codable {
    public init(routeId: String?, routeShortName: String?, agencyId: Int, routeLabel: String?, description: String?, routeUrlParam: String?) {
        self.routeId = routeId
        self.routeShortName = routeShortName
        self.agencyId = agencyId
        self.routeLabel = routeLabel
        self.description = description
        self.routeUrlParam = routeUrlParam
    }

    public let routeId: String?
    public let routeShortName: String?
    public let agencyId: Int
    public let routeLabel: String?
    public let description: String?
    public let routeUrlParam: String?
}
