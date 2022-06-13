//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct Place: Codable {
    public let placeCode: String?
    public let description: String?

    public init(placeCode: String?, description: String?) {
        self.placeCode = placeCode
        self.description = description
    }
}
