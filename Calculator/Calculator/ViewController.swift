//
//  ViewController.swift
//  Calculator
//
//  Created by Mikhail Lysikov on 08.06.2021.
//

import UIKit

class ViewController: UIViewController {
    var operand = ""
    var numberOne = ""
    var numberTwo = ""

    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func clearAction(_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultLabel.text = "0"
    }
    @IBAction func resultAction(_ sender: UIButton) {
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double(numberOne)! /
                Double(numberTwo)!
        case "*":
            result = Double(numberOne)! *
                Double(numberTwo)!
        case "-":
            result = Double(numberOne)! -
                Double(numberTwo)!
        case "+":
            result = Double(numberOne)! +
                Double(numberTwo)!
        default:
            break
        }
        if result.truncatingRemainder(dividingBy: 1.0) ==
            00 {
            resultLabel.text = String(Int(result))
        } else {
            resultLabel.text = String(result)
        }
        }

    // Функция обработки нажатия на клавиши +, -, /, *
    @IBAction func inputOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as! String
    }
    @IBAction func inputNumber(_ sender: UIButton) {
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        } else {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
        
    }
}



