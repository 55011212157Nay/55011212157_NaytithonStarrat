//
//  ViewController.swift
//  TipCalculator2
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tipCalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    
    @IBOutlet var taxPctLabel: UILabel!
    @IBOutlet var totalTextField: UITextField!
    @IBOutlet var taxPctSlider: UISlider!
    @IBOutlet var resultsTextView: UITextView!
    
    
    
    @IBAction func CalculateTapped(sender: AnyObject) {
        tipCalc.total = Double((totalTextField.text as NSString).doubleValue)
        let possibleTips = tipCalc.returnPossibleTips()
        var results = ""
        for(tipPct,tipValue) in possibleTips{
            results += "\(tipPct)%: \(tipValue)\n"
            resultsTextView.text = results
        }
    }
    @IBAction func taxPercentageChanged(sender: AnyObject) {
        tipCalc.taxPct = Double(taxPctSlider.value) / 100.0
        refreshUI()
    }
    @IBAction func viewTapped(sender: AnyObject){
        totalTextField.resignFirstResponder()
    }
    
    func refreshUI(){
        totalTextField.text = String(format: "%0.2f", tipCalc.total)
        taxPctSlider.value = Float(tipCalc.taxPct) * 100.00
        taxPctLabel.text = "tax Percentage (\(Int(taxPctSlider.value))%)"
        resultsTextView.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}

