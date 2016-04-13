import UIKit

class CaffeineTrackerViewController: UIViewController {

    @IBOutlet weak var CaffeineIntakeLabel: UILabel!
    @IBOutlet weak var CaffweanTitleLabel: UILabel!
    @IBOutlet var ImageButtonCollection: [UIButton]!

    let caffeineCalculator = CaffeineCalculator()
    let lightBlueColor = UIColor(red: 0.38, green: 0.71, blue: 0.93, alpha: 1.0)

    override func viewDidLoad() {
        CaffeineIntakeLabel.text = getCaffeineIntakeText()

        CaffeineIntakeLabel.shadowOffset = CGSize(width: 3, height: 3)
        CaffeineIntakeLabel.shadowColor = lightBlueColor

        CaffweanTitleLabel.shadowOffset = CGSize(width: 3, height: 3)
        CaffweanTitleLabel.shadowColor = lightBlueColor

        for imageButton in ImageButtonCollection {
            imageButton.layer.borderWidth = 2
            imageButton.layer.borderColor = lightBlueColor.CGColor
            imageButton.layer.cornerRadius = 15
            imageButton.imageEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 10)
        }
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
