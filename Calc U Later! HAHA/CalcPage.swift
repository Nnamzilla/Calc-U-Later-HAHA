//
//  ViewController.swift
//  Calc U Later! HAHA
//
//  Created by Nnamdi Massally on 11/27/17.
//  Copyright © 2017 Nnamdi Massally. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var numOnScreen:Double = 0;
    var prevNum:Double = 0;
    var executeFunc = false
    var operation = 0;

    
    
    @IBOutlet weak var FuncButton1: UIButton!
    @IBOutlet weak var FuncButton2: UIButton!
    @IBOutlet weak var FuncButton3: UIButton!
    @IBOutlet weak var FuncButton4: UIButton!
    @IBOutlet weak var FuncButton5: UIButton!
    @IBOutlet weak var FuncButton6: UIButton!
    @IBOutlet weak var FuncButton7: UIButton!
    @IBOutlet weak var FuncButton8: UIButton!
    @IBOutlet weak var FuncButton9: UIButton!
    @IBOutlet weak var FuncButton10: UIButton!
    @IBOutlet weak var FuncButton11: UIButton!
    @IBOutlet weak var FuncButton12: UIButton!
    @IBOutlet weak var FuncButton13: UIButton!

    
    
    
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
                numberDisplay.text = String(prevNum / 100)
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
            else if operation == 107 // RaiseToPower
            {
                numberDisplay.text = String(pow(prevNum, numOnScreen))
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
    
    @IBAction func funcOperations(_ sender: UIButton) {
        if numberDisplay.text != ""
        {
            prevNum = Double(numberDisplay.text!)!
            
            if sender.tag == 101
            {
                numberDisplay.text = String(prevNum * -1)
                prevNum = Double(numberDisplay.text!)!
            }
            else if sender.tag == 102
            {
                numberDisplay.text = String(1 / prevNum)
                prevNum = Double(numberDisplay.text!)!
            }
            else if sender.tag == 103
            {
                numberDisplay.text = String(prevNum * prevNum)
                prevNum = Double(numberDisplay.text!)!
            }
            else if sender.tag == 104
            {
                numberDisplay.text = String(prevNum * prevNum * prevNum)
                prevNum = Double(numberDisplay.text!)!
            }
            else if sender.tag == 105
            {
                numberDisplay.text = String(prevNum.squareRoot())
                prevNum = Double(numberDisplay.text!)!
            }
            else if sender.tag == 106
            {
                numberDisplay.text = String(pow(prevNum, (1/3)))
                prevNum = Double(numberDisplay.text!)!
            }
            else if sender.tag == 107
            {
                operation = sender.tag
                executeFunc = true;
            }
            else if sender.tag == 108
            {
                var x:Double = 1.0
                let intVal:Int = Int(prevNum)
                var count:Double = 1.0
                if Double(intVal) != prevNum
                {
                    numberDisplay.text = "Error"
                }
                else
                {
                    while count <= Double(intVal)
                        {
                            x = count * x
                            count += 1
                        }
                    numberDisplay.text = String(x)
                    prevNum = Double(numberDisplay.text!)!
                }
            }
            else if sender.tag == 109
            {
                numberDisplay.text = String(2.7182818284)
                prevNum = Double(numberDisplay.text!)!
            }
            else if sender.tag == 110
            {
                numberDisplay.text = String(log(prevNum))
                prevNum = Double(numberDisplay.text!)!
            }
            else if sender.tag == 111
            {
                numberDisplay.text = String(log2(prevNum))
                prevNum = Double(numberDisplay.text!)!
            }
            else if sender.tag == 112
            {
                numberDisplay.text = String(3.1415926)
                prevNum = Double(numberDisplay.text!)!
            }
            
            useFunc(sender)
        }
    }
    
    
    @IBAction func useFunc(_ sender: UIButton) {
        if FuncButton1.isHidden == true
        {
            FuncButton1.isHidden = false
            FuncButton2.isHidden = false
            FuncButton3.isHidden = false
            FuncButton4.isHidden = false
            FuncButton5.isHidden = false
            FuncButton6.isHidden = false
            FuncButton7.isHidden = false
            FuncButton8.isHidden = false
            FuncButton9.isHidden = false
            FuncButton10.isHidden = false
            FuncButton11.isHidden = false
            FuncButton12.isHidden = false
            FuncButton13.isHidden = false
        }
        else
        {
            FuncButton1.isHidden = true
            FuncButton2.isHidden = true
            FuncButton3.isHidden = true
            FuncButton4.isHidden = true
            FuncButton5.isHidden = true
            FuncButton6.isHidden = true
            FuncButton7.isHidden = true
            FuncButton8.isHidden = true
            FuncButton9.isHidden = true
            FuncButton10.isHidden = true
            FuncButton11.isHidden = true
            FuncButton12.isHidden = true
            FuncButton13.isHidden = true
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

