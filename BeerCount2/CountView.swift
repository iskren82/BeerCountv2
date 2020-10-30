//
//  CountView.swift
//  BeerCount2
//
//  Created by Iskren Tashev on 31.10.20.
//

import UIKit
import QuartzCore

class CountView: UIViewController {
    
    var beerCount = 0
    
    @IBOutlet weak var topBeerCounter: UILabel!
    @IBAction func countBeerButton(_ sender: Any) {
        
        beerCount += 1
        updateValues()
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        roundLabel()
    }

    
    func roundLabel() {
        
        topBeerCounter.layer.backgroundColor  = UIColor.red.cgColor
        topBeerCounter.layer.cornerRadius = 15
        topBeerCounter.layer.masksToBounds = true
        topBeerCounter.layer.borderWidth = 2
        topBeerCounter.layer.borderColor = UIColor.white.cgColor
    }
    
    
    
    

    private func updateValues () {
        topBeerCounter.text = "\(beerCount)"
        
    }

}
