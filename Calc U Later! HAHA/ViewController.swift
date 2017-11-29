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
        if numberDisplay.text != "" && sender.tag != 11 && sender.tag != 14
        {
            
            prevNum = Double(numberDisplay.text!)!
            
            if sender.tag == 18 // Addition
            {
                numberDisplay.text = "+"
            }
            else if sender.tag == 17 // Subtraction
            {
                
            }
            else if sender.tag == 16 // Multiplication
            {
                
            }
            else if sender.tag == 15 // Division
            {
                
            }
            else if sender.tag == 13 // Percentage
            {
                
            }
            
            executeFunc = true;
            
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

