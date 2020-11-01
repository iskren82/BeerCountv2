//
//  ExpandedStats.swift
//  BeerCount2
//
//  Created by Iskren Tashev on 1.11.20.
//

import UIKit

class ExpandedStats: UIViewController {
    
    
    @IBOutlet weak var beerMugsLabel: UILabel!
    
    @IBOutlet weak var beerLitersLabel: UILabel!
    
    @IBOutlet weak var caloriesLabel: UILabel!
    
    @IBOutlet weak var moneyLabel: UILabel!
    
   // @IBAction func clearValues(_ sender: Any) {}
    
    @IBAction func CloseModal(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        updateValues()
        // Do any additional setup after loading the view.
    }
    

    private func updateValues () {
        beerMugsLabel.text = String(format: "%.0f", beerCount)
        beerLitersLabel.text = "\(beerCount)"
        caloriesLabel.text = "\(beerCount)"
        moneyLabel.text = "\(beerCount)"
        
    }

//    private func clearValues () {
//        beerCount = 0
//        updateValues()
//    }
    
    private func calculateValues () {
        var beerLiters = beerCount / 2
        var calories = beerCount * 0.2
        var money = beerCount * 3.50
    }
}
