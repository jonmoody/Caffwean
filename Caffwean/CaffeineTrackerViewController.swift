import UIKit

class CaffeineTrackerViewController: UIViewController {

    @IBOutlet weak var CaffeineIntakeLabel: UILabel!
    @IBOutlet weak var CaffweanTitleLabel: UILabel!

    let caffeineCalculator = CaffeineCalculator()

    override func viewDidLoad() {
        CaffeineIntakeLabel.text = getCaffeineIntakeText()

        CaffeineIntakeLabel.shadowOffset = CGSize(width: 2, height: 2)
        CaffeineIntakeLabel.shadowColor = UIColor.grayColor()

        CaffweanTitleLabel.shadowOffset = CGSize(width: 2, height: 2)
        CaffweanTitleLabel.shadowColor = UIColor.grayColor()
    }

    func getCaffeineIntake() -> Int {
        return caffeineCalculator.totalCaffeine
    }

    func getCaffeineIntakeText() -> String {
        return String(getCaffeineIntake())
    }

    @IBAction func beverageButtonPressed(sender: UIButton) {
        caffeineCalculator.add(sender.currentTitle!)
        CaffeineIntakeLabel.text = getCaffeineIntakeText()
    }
}
