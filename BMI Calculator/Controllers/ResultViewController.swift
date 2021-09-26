//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by ashrakat emad on 20/09/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //optional string because when intially a ResultViewController is created I don't know what is the value of bmiValues
    var bmiValue: String?
    var advice: String?
    var color:UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        view.backgroundColor = color
        adviceLabel.text = advice
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    

    

}
