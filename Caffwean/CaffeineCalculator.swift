class CaffeineCalculator {

    var totalCaffeine: Int = 0

    let caffeineMap = [
        "Coke Zero" : 34,
        "Diet Mountain Dew" : 54
    ]

    func add(beverage: String) {
        totalCaffeine += caffeineMap[beverage]!
    }

}
