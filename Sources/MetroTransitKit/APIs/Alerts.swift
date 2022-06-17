//
//  Alerts.swift
//  
//
//  Created by Jacob Hearst on 6/17/22.
//

import Foundation

public struct AlertsAPI {
    let networkService: NetworkService
    var baseURL: URL {
        NetworkService.baseURL.appendingPathComponent("alerts")
    }

    public func getAlerts(completion: @escaping (Result<[IAlert], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponent("all"))
        networkService.request(request, as: [IAlert].self, completion: completion)
    }

    public func getAlerts(routeId: String, completion: @escaping (Result<[IAlert], Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponent(routeId))
        networkService.request(request, as: [IAlert].self, completion: completion)
    }

    public func getAlert(alertId: String, completion: @escaping (Result<IAlert, Error>) -> Void) {
        let request = URLRequest(url: baseURL.appendingPathComponents(["alert", alertId]))
        networkService.request(request, as: IAlert.self, completion: completion)
    }
}
