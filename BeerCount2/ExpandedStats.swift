//
//  ExpandedStats.swift
//  BeerCount2
//
//  Created by Iskren Tashev on 1.11.20.
//

import UIKit

var beerLiters = lastBeerCount / 2
var calories = lastBeerCount * 2300
var money = lastBeerCount * 3.50


class ExpandedStats: UIViewController {
    
    
    @IBOutlet weak var beerMugsLabel: UILabel!
    
    @IBOutlet weak var beerLitersLabel: UILabel!
    
    @IBOutlet weak var caloriesLabel: UILabel!
    
    @IBOutlet weak var moneyLabel: UILabel!
    
   //@IBAction func clearValues(_ sender: Any) {
    //clearValues()
    //updateCountValues()
   //}
    
    @IBAction func CloseModal(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if lastBeerCount != 0 {
            updateCountValues()
        } else{
            beerLiters = 0
            calories = 0
            money = 0
        }

        
        // Do any additional setup after loading the view.
    }
    

    private func updateCountValues () {
        beerMugsLabel.text = String(format: "%.0f", lastBeerCount)
        beerLitersLabel.text = String(format: "%.1f", lastBeerCount / 2)
        caloriesLabel.text = String(format: "%.0f", lastBeerCount * 2300)
        moneyLabel.text = String(format: "%.2f", lastBeerCount * 3.50)
        
    }

//    public func clearValues () {
//        beerCounted = 0
//        beerLiters = beerCounted / 2
//        calories = beerCounted * 2300
//        money = beerCounted * 3.50
//        beerCount = 0
//        updateCountValues()
//
//
//    }
    
    
        
    
}
