//
//  ViewController.swift
//  Tip Calculator
//
//  Created by 4d on 3/7/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var dinnerCost: UITextField!
    
    @IBOutlet var reset: UIButton!
    @IBOutlet var calculateB: UIButton!
    @IBOutlet var tipCost: UILabel!
    @IBOutlet var totalCost: UILabel!
    @IBOutlet var tipPercent: UITextField!
    
    @IBAction func dinCost(_ sender: Any) {
    }
    
    @IBAction func tipPerc(_ sender: Any) {
    }
    
    @IBAction func resetBut(_ sender: Any) {
        tipCost.text = ""
        totalCost.text = "$0.00"
        dinnerCost.text = ""
        tipPercent.text = ""
    }
    @IBAction func calc(_ sender: Any) {
        
        var tipAmount = (Double(tipPercent.text!) ?? 0) * (Double(dinnerCost.text!) ?? 0) * 0.01
        
        tipCost.text = String(tipAmount)
        
        var tot = (Double(tipCost.text!) ?? 0) + (Double(dinnerCost.text!) ?? 0)
        totalCost.text = String(tot)
    }
    
    
    
}

