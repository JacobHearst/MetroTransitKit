//
//  Translation.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct Translation: Codable {
    public init(text: String?, langugage: String?) {
        self.text = text
        self.langugage = langugage
    }

    public let text: String?
    public let langugage: String?
}
