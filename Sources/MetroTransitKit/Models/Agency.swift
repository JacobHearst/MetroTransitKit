//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct Agency: Codable {
    public let agencyId: Int
    public let agencyName: String?

    public init(agencyId: Int, agencyName: String?) {
        self.agencyId = agencyId
        self.agencyName = agencyName
    }
}
