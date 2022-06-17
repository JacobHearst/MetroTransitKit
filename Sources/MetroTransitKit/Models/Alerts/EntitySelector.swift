//
//  File.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct EntitySelector: Codable {
    public init(agencyId: String?,
                routeId: String?,
                routeType: Int,
                directionId: Int?,
                directionText: String?,
                trip: TripDescriptor,
                stopId: String?,
                routeLabel: String?) {
        self.agencyId = agencyId
        self.routeId = routeId
        self.routeType = routeType
        self.directionId = directionId
        self.directionText = directionText
        self.trip = trip
        self.stopId = stopId
        self.routeLabel = routeLabel
    }

    public let agencyId: String?
    public let routeId: String?
    public let routeType: Int
    public let directionId: Int?
    public let directionText: String?
    public let trip: TripDescriptor
    public let stopId: String?
    public let routeLabel: String?
}
