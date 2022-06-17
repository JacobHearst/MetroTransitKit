//
//  RouteDetails.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct RouteDetails: Codable {
    public init(routeId: String?,
                agencyId: Int,
                agencyName: String?,
                pickChange: String?,
                routeShortName: String?,
                routeLongName: String?,
                routeDesc: String?,
                routeType: Int,
                routeTypeName: String?,
                routeURL: String?,
                routeColor: String?,
                routeTextColor: String?,
                providerContact: String?,
                routeComment: String?,
                schedules: [ScheduleType]?) {
        self.routeId = routeId
        self.agencyId = agencyId
        self.agencyName = agencyName
        self.pickChange = pickChange
        self.routeShortName = routeShortName
        self.routeLongName = routeLongName
        self.routeDesc = routeDesc
        self.routeType = routeType
        self.routeTypeName = routeTypeName
        self.routeURL = routeURL
        self.routeColor = routeColor
        self.routeTextColor = routeTextColor
        self.providerContact = providerContact
        self.routeComment = routeComment
        self.schedules = schedules
    }

    public let routeId: String?
    public let agencyId: Int
    public let agencyName: String?
    public let pickChange: String?
    public let routeShortName: String?
    public let routeLongName: String?
    public let routeDesc: String?
    public let routeType: Int
    public let routeTypeName: String?
    public let routeURL: String?
    public let routeColor: String?
    public let routeTextColor: String?
    public let providerContact: String?
    public let routeComment: String?
    public let schedules: [ScheduleType]?
}
