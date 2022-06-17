//
//  Timepoint.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct Timepoint: Codable {
    public init(timepointLabel: String?, placeSequence: Int, mapReference: Int, downtownZone: String?) {
        self.timepointLabel = timepointLabel
        self.placeSequence = placeSequence
        self.mapReference = mapReference
        self.downtownZone = downtownZone
    }

    public let timepointLabel: String?
    public let placeSequence: Int
    public let mapReference: Int
    public let downtownZone: String?
}
