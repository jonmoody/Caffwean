import UIKit

class CaffeineTrackerViewController: UIViewController {

    @IBOutlet weak var CaffeineIntakeLabel: UILabel!

    let caffeineCalculator = CaffeineCalculator()

    override func viewDidLoad() {
        CaffeineIntakeLabel.text = getCaffeineIntakeText()
    }

    func getCaffeineIntake() -> Int {
        return caffeineCalculator.totalCaffeine
    }

    func getCaffeineIntakeText() -> String {
        return String(getCaffeineIntake()) + "mg"
    }

    @IBAction func beverageButtonPressed(sender: UIButton) {
        caffeineCalculator.add("Coke Zero")
        CaffeineIntakeLabel.text = getCaffeineIntakeText()
    }
}
