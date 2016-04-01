import UIKit

class CaffeineTrackerViewController: UIViewController {

    var caffeineIntake: Int = 0
    @IBOutlet weak var CaffeineIntakeLabel: UILabel!

    override func viewDidLoad() {
        CaffeineIntakeLabel.text = getCaffeineIntakeText()
    }

    func getCaffeineIntake() -> Int {
        return caffeineIntake
    }

    func getCaffeineIntakeText() -> String {
        return String(caffeineIntake) + "mg"
    }

    func addCaffeine(caffeineAmount: Int) {
        caffeineIntake += caffeineAmount
    }

}
