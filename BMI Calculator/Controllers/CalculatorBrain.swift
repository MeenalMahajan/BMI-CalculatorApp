//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Apple on 25/04/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        
       let bmiValue = weight/pow(height, 2)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat More Pies!", color: UIColor.blue)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat Less Pies", color: UIColor.red)
        }
        
    }
    
    
    func getBMIValue() -> String{
        
        let decimalbmiValue = String(format: "%.1f",  bmi?.value ?? 0.0)

        return decimalbmiValue
    }
    
    
    func getAdvice() -> String{
        
        return bmi?.advice ?? "Invalid"
    }
    
    func getColor() -> UIColor{
        
        return bmi?.color ?? UIColor.clear
        
    }
    
    
}
