//
//  Suggestion.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct Suggestion: Codable {
    public init(text: String?, magicKey: String?) {
        self.text = text
        self.magicKey = magicKey
    }

    public let text: String?
    public let magicKey: String?
}
