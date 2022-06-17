import XCTest
@testable import MetroTransitKit

final class NexTripSmokeTests: XCTestCase {
    var client: MetroTransitClient!

    override func setUp() {
        self.client = MetroTransitClient(networkLogLevel: .verbose)
    }

    func testGetAgencies() throws {
        let exp = expectation(description: "\(#function)")

        client.nexTrip.getAgencies { result in
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

    func testGetRoutes() throws {
        let exp = expectation(description: "\(#function)")

        client.nexTrip.getRoutes { result in
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

    func testGetNexTripByStop() {
        let exp = expectation(description: "\(#function)")

        client.nexTrip.getNexTrip(stopID: 51405) { result in
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

    func testGetNexTrip() throws {
        let exp = expectation(description: "\(#function)")

        client.nexTrip.getNexTrip(routeID: "901", directionID: 0, placeCode: "MAAM") { result in
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

    func testGetDirections() throws {
        let exp = expectation(description: "\(#function)")

        client.nexTrip.getDirections(routeId: "901") { result in
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

    func testGetStops() throws {
        let exp = expectation(description: "\(#function)")

        client.nexTrip.getStops(routeID: "901", directionID: 0) { result in
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

    func testGetVehicles() throws {
        let exp = expectation(description: "\(#function)")

        client.nexTrip.getVehicles(routeID: "901") { result in
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
}
