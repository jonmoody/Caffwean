import XCTest
@testable import Caffwean

class CaffeineTrackerViewControllerTest: XCTestCase {

    func testDailyCaffeineIntakeIsDefaultedToZero() {
        let caffeineTracker = CaffeineTrackerViewController()
        XCTAssertEqual(0, caffeineTracker.getCaffeineIntake())
    }

    func testCaffeineIntakeLabelWillDisplay0mgByDefault() {
        let caffeineTracker = CaffeineTrackerViewController()

        XCTAssertEqual("0", caffeineTracker.getCaffeineIntakeText())
    }

    func testWhenTheCaffeineIntakeAmountChangesThenTheCaffeineIntakeLabelWillBeUpdatedToReflectTheNewAmount() {
        let caffeineTracker = CaffeineTrackerViewController()

        caffeineTracker.caffeineCalculator.totalCaffeine = 55

        XCTAssertEqual("55", caffeineTracker.getCaffeineIntakeText())
    }

}
