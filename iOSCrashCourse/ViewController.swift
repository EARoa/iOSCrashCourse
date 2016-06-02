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
    @IBOutlet var tipLabel :UILabel!
    @IBOutlet var tipSlider :UISlider!
    @IBOutlet var moodLabel :UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tipSlider.addTarget(self, action: #selector(sliderValueChanged), forControlEvents: .ValueChanged)
        
    }
    
    
    
    
    func sliderValueChanged() {
        
        let total = Double(self.totalTextField.text!)
        var tip = 0.0

        switch self.tipSlider.value {
            
        case 0..<25:
            self.tipSlider.value = 0
            tip = 0
            self.tipLabel.text = "\(tip)"
            self.moodLabel.text = "😡"
            
            
        case 25..<51:
            tip = 5/100
            self.tipLabel.text = "\(total! * tip)"
            self.tipSlider.value = 25
            self.moodLabel.text = "😐"
            
            
            
        case 51..<75:
            tip = 10/100
            self.tipLabel.text = "\(total! * tip)"
            self.tipSlider.value = 50
            self.moodLabel.text = "😋"
            print("50..74")
            
        case 75..<101:
            tip = 15/100
            self.tipLabel.text = "\(total! * tip)"
            self.tipSlider.value = 75
            self.moodLabel.text = "😀"
            print("75..100")
            
        default:
            print("default")
            
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

