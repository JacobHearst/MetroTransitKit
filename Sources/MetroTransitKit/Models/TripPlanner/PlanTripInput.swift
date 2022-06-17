//
//  PlanTripInput.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct PlanTripInput: Codable {
    public init(origin: PlannerLocation,
                destination: PlannerLocation,
                arrdep: String?,
                walkdist: Double,
                minimize: String?,
                accessible: Bool,
                xmode: String?,
                datetime: String) {
        self.origin = origin
        self.destination = destination
        self.arrdep = arrdep
        self.walkdist = walkdist
        self.minimize = minimize
        self.accessible = accessible
        self.xmode = xmode
        self.datetime = datetime
    }

    public let origin: PlannerLocation
    public let destination: PlannerLocation
    public let arrdep: String?
    public let walkdist: Double
    public let minimize: String?
    public let accessible: Bool
    public let xmode: String?
    public let datetime: String
}
