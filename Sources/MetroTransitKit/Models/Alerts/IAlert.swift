//
//  IAlert.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct IAlert: Codable {
    public enum AlertLifecycle: String, Codable {
        case UPCOMING, NEW, ONGOING, UPCOMING_ONGOING
    }

    public enum Cause: String, Codable {
        case UNKNOWN_CAUSE, OTHER_CAUSE, TECHNICAL_PROBLEM, STRIKE, DEMONSTRATION, ACCIDENT, HOLIDAY, WEATHER, MAINTENANCE, CONSTRUCTION, POLICE_ACTIVITY, MEDICAL_EMERGENCY
    }

    public enum Effect: String, Codable {
        case NO_SERVICE, REDUCED_SERVICE, SIGNIFICANT_DELAYS, DETOUR, ADDITIONAL_SERVICE, MODIFIED_SERVICE, OTHER_EFFECT, UNKNOWN_EFFECT, STOP_MOVED, NO_EFFECT, ACCESSIBILITY_ISSUE
    }

    public enum Severity: String, Codable {
        case UNKNOWN_SEVERITY, INFO, WARNING, SEVERE
    }

    public init(id: String?,
                lastModifiedTimestamp: Int,
                alertLifecycle: IAlert.AlertLifecycle,
                activePeriod: [TimeRange],
                cause: IAlert.Cause,
                effect: IAlert.Effect,
                effectDetail: String?,
                url: TranslatedString?,
                headerText: TranslatedString,
                descriptionText: TranslatedString,
                severityLevel: IAlert.Severity) {
        self.id = id
        self.lastModifiedTimestamp = lastModifiedTimestamp
        self.alertLifecycle = alertLifecycle
        self.activePeriod = activePeriod
        self.cause = cause
        self.effect = effect
        self.effectDetail = effectDetail
        self.url = url
        self.headerText = headerText
        self.descriptionText = descriptionText
        self.severityLevel = severityLevel
    }

    public let id: String?
    public let lastModifiedTimestamp: Int
    public let alertLifecycle: AlertLifecycle
    public let activePeriod: [TimeRange]
    public let cause: Cause
    public let effect: Effect
    public let effectDetail: String?
    public let url: TranslatedString?
    public let headerText: TranslatedString
    public let descriptionText: TranslatedString
    public let severityLevel: Severity
}
