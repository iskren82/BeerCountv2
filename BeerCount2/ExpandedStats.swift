//
//  ExpandedStats.swift
//  BeerCount2
//
//  Created by Iskren Tashev on 1.11.20.
//

import UIKit

var beerLiters = beerCounted / 2
var calories = beerCounted * 2300
var money = beerCounted * 3.50
var beerCounted = beerCount

class ExpandedStats: UIViewController {
    
    
    @IBOutlet weak var beerMugsLabel: UILabel!
    
    @IBOutlet weak var beerLitersLabel: UILabel!
    
    @IBOutlet weak var caloriesLabel: UILabel!
    
    @IBOutlet weak var moneyLabel: UILabel!
    
   @IBAction func clearValues(_ sender: Any) {
    clearValues()
    updateCountValues()
   }
    
    @IBAction func CloseModal(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        updateCountValues()
        // Do any additional setup after loading the view.
    }
    

    private func updateCountValues () {
        beerMugsLabel.text = String(format: "%.0f", beerCounted)
        beerLitersLabel.text = String(format: "%.0f", beerLiters)
        caloriesLabel.text = String(format: "%.0f", calories)
        moneyLabel.text = String(format: "%.2f", money)
        
    }

    public func clearValues () {
        beerCounted = 0
        beerLiters = beerCounted / 2
        calories = beerCounted * 2300
        money = beerCounted * 3.50
        beerCount = 0
        updateCountValues()
        
        
    }
    
    
        
    
}
