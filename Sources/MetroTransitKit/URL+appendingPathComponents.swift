//
//  File.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

internal extension URL {
    func appendingPathComponents(_ components: [String]) -> URL {
        var newURL = self
        for component in components {
            newURL.appendPathComponent(component)
        }

        return newURL
    }
}
