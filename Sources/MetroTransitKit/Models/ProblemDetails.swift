//
//  File.swift
//  
//
//  Created by Jacob Hearst on 4/16/22.
//

public struct ProblemDetails: Codable {
    public let type: String?
    public let title: String?
    public let status: Int?
    public let detail: String?
    public let instance: String?

    public init(type: String?, title: String?, status: Int?, detail: String?, instance: String?) {
        self.type = type
        self.title = title
        self.status = status
        self.detail = detail
        self.instance = instance
    }
}
