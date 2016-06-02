//
//  ViewController.swift
//  iOSCrashCourse
//
//  Created by Efrain Ayllon on 6/1/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var totalTextField :UITextField!
    @IBOutlet var tipTextField :UITextField!
    @IBOutlet var tipLabel :UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func calculateTipButtonPressed() {
        
        let totalAmount = Double(self.totalTextField.text!)
        let tipPercentage = Double(self.tipTextField.text!)
        
        let tipAmount = totalAmount! * (tipPercentage!/100)
        
        self.tipLabel.text = "\(tipAmount)"
        
        print(self.totalTextField.text!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

