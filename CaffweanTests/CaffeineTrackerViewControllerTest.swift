import XCTest
@testable import Caffwean

class CaffeineTrackerViewControllerTest: XCTestCase {

    func testDailyCaffeineIntakeIsDefaultedToZero() {
        let caffeineTracker = CaffeineTrackerViewController()
        XCTAssertEqual(caffeineTracker.getCaffeineIntake(), 0)
    }

    func testCaffeineCanBeAddedToTheCaffeineTracker() {
        let caffeineTracker = CaffeineTrackerViewController()
        let expectedCaffeineIntake = 52

        caffeineTracker.addCaffeine(expectedCaffeineIntake)

        XCTAssertEqual(caffeineTracker.getCaffeineIntake(), expectedCaffeineIntake)
    }

    func testCaffeineIntakeLabelWillDisplay0mgByDefault() {
        let caffeineTracker = CaffeineTrackerViewController()

        XCTAssertEqual(caffeineTracker.getCaffeineIntakeText(), "0mg")
    }

    func testCaffeineIntakeLabelTextWillBeUpdatedWithCaffeineIntake() {
        let caffeineTracker = CaffeineTrackerViewController()
        caffeineTracker.addCaffeine(92)

        XCTAssertEqual(caffeineTracker.getCaffeineIntakeText(), "92mg")
    }

}
