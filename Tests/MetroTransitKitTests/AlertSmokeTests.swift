import XCTest
@testable import MetroTransitKit

final class AlertSmokeTests: XCTestCase {
    var client: MetroTransitClient!

    override func setUp() {
        self.client = MetroTransitClient(networkLogLevel: .verbose)
    }

    func testGetAlerts() throws {
        let exp = expectation(description: "\(#function)")

        client.alerts.getAlerts { result in
            switch result {
            case .failure(let error):
                XCTFail("Received error: \(error)")
            default:
                break
            }
            exp.fulfill()
        }

        waitForExpectations(timeout: 30)
    }

    func testGetAlertsByRouteId() throws {
        let exp = expectation(description: "\(#function)")

        client.alerts.getAlerts(routeId: "54") { result in
            switch result {
            case .failure(let error):
                XCTFail("Received error: \(error)")
            default:
                break
            }
            exp.fulfill()
        }

        waitForExpectations(timeout: 10)
    }

    func testGetAlert() {
        let exp = expectation(description: "\(#function)")

        client.alerts.getAlerts { result in
            switch result {
            case .failure(let err):
                XCTFail("Received error: \(err)")
            case .success(let alerts):
                if let firstAlertId = alerts.first?.id {
                    self.client.alerts.getAlert(alertId: firstAlertId) { result in
                        switch result {
                        case .failure(let error):
                            XCTFail("Received error: \(error)")
                        default:
                            break
                        }
                        exp.fulfill()
                    }
                } else {
                    exp.fulfill()
                }
            }
        }

        waitForExpectations(timeout: 30)
    }
}
