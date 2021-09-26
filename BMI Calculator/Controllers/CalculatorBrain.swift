//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by ashrakat emad on 21/09/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI(h:Float, w:Float){
        let bmiValue =  w / pow(h, 2)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.3607843137, green: 0.4784313725, blue: 0.9176470588, alpha: 1))
        }
        else if bmiValue <= 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5019607843, green: 0.9294117647, blue: 0.6, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.7058823529, green: 0.168627451, blue: 0.3176470588, alpha: 1))
        }
    }
    
    func getBMIValue()->String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice!"
    }
    
    func getColor()-> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
    
}
