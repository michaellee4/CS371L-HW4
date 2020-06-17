//
//  Filename: CalculatorViewController.swift
//  Project: LeeMichael-HW4
//  EID: ml45898
//  Course: CS371L
//
//  Created by Michael Lee on 6/16/20.
//  Copyright © 2020 Michael Lee. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var currentOperator: String = ""
    
    @IBOutlet weak var operandOneTextField: UITextField!
    @IBOutlet weak var operandTwoTextField: UITextField!
    @IBOutlet weak var operatorTextField: UILabel!
    @IBOutlet weak var resultTextField: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        operatorTextField.text = currentOperator
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        let operandOne: Float? = Float(operandOneTextField.text ?? "")
        let operandTwo: Float? = Float(operandTwoTextField.text ?? "")
        
        if operandOne == nil || operandTwo == nil {
            resultTextField.text = "Invalid Input"
            return
        }
        
        if currentOperator == "+" {
            resultTextField.text = String(operandOne! + operandTwo!)
        }
        else if currentOperator == "-" {
            resultTextField.text = String(operandOne! - operandTwo!)
        }
        else if currentOperator == "*" {
            resultTextField.text = String(operandOne! * operandTwo!)
        }
        else if currentOperator == "/" {
            resultTextField.text = String(operandOne! / operandTwo!)
        }
    }
}
