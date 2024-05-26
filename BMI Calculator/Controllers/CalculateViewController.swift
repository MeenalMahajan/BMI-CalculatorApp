//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
    
        print(String(format : "%.2f",sender.value))
        
        heightLabel.text = String(format : "%.2f",sender.value) + "m"
        
        
    }
    
    

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        print(Int(sender.value))
        
        weightLabel.text = String(format : "%.0f",sender.value) + "kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight/pow(height, 2)
        
        //print(bmi)
        
        
        let secondVC = SecondViewController()
        
        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        self.present(secondVC, animated: true, completion: nil)
    }
}

