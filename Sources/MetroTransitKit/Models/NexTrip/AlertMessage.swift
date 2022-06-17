//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct AlertMessage: Codable {
    public let stopClosed: Bool
    public let alertText: String?

    public init(stopClosed: Bool, alertText: String?) {
        self.stopClosed = stopClosed
        self.alertText = alertText
    }
}
