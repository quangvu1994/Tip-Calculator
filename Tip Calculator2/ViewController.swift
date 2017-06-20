//
//  ViewController.swift
//  Tip Calculator2
//
//  Created by Quang Vu on 6/19/17.
//  Copyright © 2017 Quang Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipSelection: UISegmentedControl!
    @IBOutlet weak var tipAmount: UITextField!
    @IBOutlet weak var totalAmount: UITextField!
    
    @IBAction func calculateTip(_ sender: Any) {
        if let billAmount = Double(billAmountField.text!) {
            
            var tipPercentage = 0.0

            switch tipSelection.selectedSegmentIndex {
            case 0:
                tipPercentage = 0.10
            case 1:
                tipPercentage = 0.15
            case 2:
                tipPercentage = 0.20
            default:
                break
            }
            
            let roundedBillAmount = round(billAmount * 100)/100
            let roundedTipValue = round(roundedBillAmount * tipPercentage * 100)/100
            billAmountField.text = String(roundedBillAmount)
            tipAmount.text = String(roundedTipValue)
            totalAmount.text = String(roundedBillAmount + roundedTipValue)
            
        }else{
            billAmountField.text = ""
            tipAmount.text = ""
            totalAmount.text = ""
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

