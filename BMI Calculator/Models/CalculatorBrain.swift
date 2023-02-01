//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Eser Lodhia on 16/09/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
    
    }
    
    func getAdvice() -> String? {
        return bmi?.advice
    }
    
    func getColor() -> UIColor? {
        return bmi?.color
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        // pow = power. here it is power 2 of height
        let bmiValue = weight / pow(height, 2)
        let color = (underweight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), balanced: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), overweight: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)) //use color picker in #colorLiteral( only in let or var
        
        //MARK: alternative to color literal color picker UIColor {_ in return #colorLiteral( }
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Ghee dalo beta ghee dalo", color: color.underweight )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Chalo ye sahi hai", color: color.balanced )
        } else {
            bmi = BMI(value: bmiValue, advice: "Arey Arey babuji zara dheere", color: color.overweight )
        }
    }
    
}
