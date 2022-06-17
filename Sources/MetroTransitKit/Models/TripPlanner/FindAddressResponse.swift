//
//  FindAddressResponse.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct FindAddressResponse: Codable {
    public init(address: String?, atisId: String?, x: Double, y: Double) {
        self.address = address
        self.atisId = atisId
        self.x = x
        self.y = y
    }

    public let address: String?
    public let atisId: String?
    public let x: Double
    public let y: Double
}
