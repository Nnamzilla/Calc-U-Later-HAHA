//
//  ViewController.swift
//  Calc U Later! HAHA
//
//  Created by Nnamdi Massally on 11/27/17.
//  Copyright © 2017 Nnamdi Massally. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberDisplay: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        numberDisplay.text = numberDisplay.text! + String(sender.tag - 1)
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

