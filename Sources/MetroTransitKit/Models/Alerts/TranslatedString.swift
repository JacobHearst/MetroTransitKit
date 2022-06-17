//
//  TranslatedString.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct TranslatedString: Codable {
    public init(translation: [Translation]?) {
        self.translation = translation
    }

    public let translation: [Translation]?
}
