//
//  File 2.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct Route: Codable {
    public let routeId: String?
    public let agencyId: Int?
    public let routeLabel: String?

    public init(routeId: String?, agencyId: Int?, routeLabel: String?) {
        self.routeId = routeId
        self.agencyId = agencyId
        self.routeLabel = routeLabel
    }
}
