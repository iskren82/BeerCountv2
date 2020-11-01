//
//  CountView.swift
//  BeerCount2
//
//  Created by Iskren Tashev on 31.10.20.
//

import UIKit
import QuartzCore
var beerCount: Double = 0
var lastBeerCount: Double = 0

class CountView: UIViewController {
    
    
    
    @IBOutlet weak var topBeerCountLabel: UILabel!
    
    
    @IBOutlet weak var topBeerCounter: UILabel!

    @IBAction func countBeerButton(_ sender: Any) {
        
        beerCount += 1
        updateValues()
        lastBeerCount = beerCount
    }
    
    
    @IBAction func resetValues(_ sender: Any) {
        beerCount = 0
        
        updateValues()
    }
    
    @IBAction func minusBeerButton(_ sender: Any) {
        
        if beerCount > 1 {
            
            beerCount -= 1
            lastBeerCount = beerCount
        }
        else {
            beerCount = 0
            lastBeerCount = beerCount
        }
        updateValues()
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateValues()
        roundLabel()
    }

    
    func roundLabel() {
        
        topBeerCounter.layer.backgroundColor  = UIColor.red.cgColor
        topBeerCounter.layer.cornerRadius = 15
        topBeerCounter.layer.masksToBounds = true
        topBeerCounter.layer.borderWidth = 2 
        topBeerCounter.layer.borderColor = UIColor.white.cgColor
    }
    
    
    
    

    public func updateValues () {
        lastBeerCount = beerCount
        topBeerCounter.text = String(format: "%.0f", beerCount)
        topBeerCountLabel.text = String(format: "%.0f", beerCount)
        
    }

}
