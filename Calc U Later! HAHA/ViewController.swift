//
//  ViewController.swift
//  Calc U Later! HAHA
//
//  Created by Nnamdi Massally on 11/27/17.
//  Copyright © 2017 Nnamdi Massally. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numOnScreen:Double = 0;
    var prevNum:Double = 0;
    var executeFunc = false
    var operation = 0;
    
    @IBOutlet weak var numberDisplay: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if executeFunc == true
        {
            numberDisplay.text = String(sender.tag - 1)
            numOnScreen = Double(numberDisplay.text!)!
            executeFunc = false
        }
        else
        {
            numberDisplay.text = numberDisplay.text! + String(sender.tag - 1)
            numOnScreen = Double(numberDisplay.text!)!
        }
    }
    

    @IBAction func operations(_ sender: UIButton)
    {
        if numberDisplay.text != "" && sender.tag != 11 && sender.tag != 12 && sender.tag != 13 && sender.tag != 14
        {
            
            prevNum = Double(numberDisplay.text!)!
            
            if sender.tag == 18 // Addition
            {
                numberDisplay.text = "+"
            }
            else if sender.tag == 17 // Subtraction
            {
                numberDisplay.text = "-"
            }
            else if sender.tag == 16 // Multiplication
            {
                numberDisplay.text = "x"
            }
            else if sender.tag == 15 // Division
            {
                numberDisplay.text = "/"
            }
            else if sender.tag == 13 // Percentage
            {
                
            }
            
            operation = sender.tag
            executeFunc = true;
            
        }
        else if sender.tag == 14
        {
            if operation == 18 // Addition
            {
                numberDisplay.text = String(prevNum + numOnScreen)
            }
            else if operation == 17 // Subtraction
            {
                numberDisplay.text = String(prevNum - numOnScreen)
            }
            else if operation == 16 // Multiplication
            {
                numberDisplay.text = String(prevNum * numOnScreen)
            }
            else if operation == 15 // Division
            {
                numberDisplay.text = String(prevNum / numOnScreen)
            }
        }
        else if sender.tag == 13
        {
            numOnScreen = (numOnScreen / 100)
            numberDisplay.text = String(numOnScreen)
        }
        else if sender.tag == 11
        {
            numberDisplay.text = ""
            prevNum = 0;
            numOnScreen = 0;
            operation = 0;
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

