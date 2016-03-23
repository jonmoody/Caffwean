import UIKit

class CaffeineTrackerViewController: UIViewController {

    var caffeineIntake: Int = 0;

    func getCaffeineIntake() -> Int {
        return caffeineIntake;
    }

    func addCaffeine(caffeineAmount: Int) {
        caffeineIntake += caffeineAmount;
    }

}
