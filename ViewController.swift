//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Katy Rumble on 5/13/17.
//  Copyright © 2017 CSC215. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var billTotal: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipNum: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var splitNum: UILabel!
    @IBOutlet weak var tipTotal: UILabel!
    @IBOutlet weak var splitTotal: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calculateTip(_ sender: Any)
    {//START calculateTip
        
        //method
        //let billInput = Double(billTextField.text!)
        //let tipSliderValue = Double(tipSlider.value) / 100.0
        //let splitSliderValue = Double(splitSlider.value)
        
        if !(billTextField.text?.isEmpty)!
        {//START if
            
            let tip = (lroundf(tipSlider.value))
            let split = (lroundf(splitSlider.value))
            
            let billInput = Double(billTextField.text!)
            //(lroundf(sender.value))
            let tipSliderValue = Double(tip) / 100.0
            let splitSliderValue = Double(split)
            
            if sender is UISlider //user is changing a slider
            {//START nested if1
                
                //var tipSliderValue = Double(tipSlider.value) / 100.0
                //var splitSliderValue = Double(splitSlider.value)
                
                
            }//END nested if1
            if sender is UITextField
            {//START nested if2
                
                let tipAmt = tipSliderValue * billInput!
                let tipAmtString = String(format: "$%.2f", tipAmt)
                tipTotal.text = tipAmtString
                
                let billAmt = tipAmt + billInput!
                let billAmtString = String(format: "$%.2f", billAmt)
                billTotal.text = billAmtString
                
                
                let splitAmt = billAmt / splitSliderValue
                let splitAmtString = String(format: "$%.2f", splitAmt)
                splitTotal.text = splitAmtString
                
                
                
            }//END nested if2
            
        }//END if
        else
        {//START else
            
            tipTotal.text = "---"
            billTotal.text = "---"
            splitTotal.text = "---"
            
        }//END else
        
    }//END calculateTip
    
    
    @IBAction func tipSliderChanged(_ sender: UISlider)
    {//START tipSlider func
        
        tipNum.text = "\(lroundf(sender.value))"
        
    }//END tipSlider func
    
    @IBAction func splitSliderChanged(_ sender: UISlider)
    {//START splitSlider func
        
        splitNum.text = "\(lroundf(sender.value))"
        
    }//END splitSlider func
    
    
}

