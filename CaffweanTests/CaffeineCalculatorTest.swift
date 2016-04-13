import XCTest
@testable import Caffwean

class CaffeineCalculatorTest: XCTestCase {

    func testWhenACanOfCokeZeroIsConsumedThen34mgIsAddedToTheCaffeineTotal() {
        let caffeineCalculator = CaffeineCalculator()

        caffeineCalculator.add("Coke Zero")

        XCTAssertEqual(34, caffeineCalculator.totalCaffeine)
    }

}
