import XCTest
@testable import Caffwean

class CaffeineTrackerViewControllerTest: XCTestCase {

    func testDailyCaffeineIntakeIsDefaultedToZero() {
        let caffeineTracker = CaffeineTrackerViewController();
        XCTAssertEqual(caffeineTracker.getCaffeineIntake(), 0);
    }

}
