//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let sliderHeight: Float = round(sender.value * 100)/100.0
        heightLabel.text = "\(sliderHeight)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        //Int function already rounds the number without any need for using the round function
        let sliderWeight: Int = Int(sender.value)
        weightLabel.text = "\(sliderWeight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton){
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(h:height, w:weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
    
}

