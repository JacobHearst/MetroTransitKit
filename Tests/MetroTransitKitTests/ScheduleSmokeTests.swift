import XCTest
@testable import MetroTransitKit

final class ScheduleSmokeTests: XCTestCase {
    var client: MetroTransitClient!

    override func setUp() {
        self.client = MetroTransitClient(networkLogLevel: .verbose)
    }

    func testGetRoutes() throws {
        let exp = expectation(description: "\(#function)")

        client.schedule.getRoutes { result in
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

    func testGetRouteDetails() throws {
        let exp = expectation(description: "\(#function)")

        client.schedule.getRouteDetails(routeURLParam: "852") { result in
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

    func testGetTimetable() throws {
        let exp = expectation(description: "\(#function)")

        client.schedule.getTimetable(routeId: "852", scheduleNumber: 1) { result in
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

    func testGetStopList() throws {
        let exp = expectation(description: "\(#function)")

        client.schedule.getStopList(routeId: "852", scheduleNumber: 1) { result in
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

    func testGetStopSchedule() throws {
        let exp = expectation(description: "\(#function)")

        client.schedule.getStopSchedule(routeId: "852", scheduleNumber: 1, boardStop: 53315, exitStop: 53316) { result in
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
}
