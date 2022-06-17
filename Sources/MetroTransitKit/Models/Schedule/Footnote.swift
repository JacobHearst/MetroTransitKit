//
//  Footnote.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct Footnote: Codable {
    public init(commentTag: String?, commentText: String?) {
        self.commentTag = commentTag
        self.commentText = commentText
    }

    public let commentTag: String?
    public let commentText: String?
}
