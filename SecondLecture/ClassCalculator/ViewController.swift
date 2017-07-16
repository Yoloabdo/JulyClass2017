//
//  ViewController.swift
//  ClassCalculator
//
//  Created by abdelrahman mohamed on 7/9/17.
//  Copyright © 2017 abdelrahman mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    
    
    
    var currentValue: Double? {
        get {
            guard let text = resultsLabel.text else {
                return nil
            }
            return Double(text)
        }
        set {
            guard let value = newValue else {
                resultsLabel.text = nil
                return
            }
            resultsLabel.text = "\(String(describing: value))"
        }
    }
    
    @IBAction func numberTapped(_ sender: UIButton) {
        if let currentText = resultsLabel.text,
            let buttonText = sender.currentTitle {
            resultsLabel.text = currentText + buttonText
        }else if let buttonText = sender.currentTitle {
            resultsLabel.text = buttonText
        }
    }
    
    
    var firstValue: Double!
    
    @IBAction func process(_ sender: UIButton) {
        
        switch sender.currentTitle! {
        case "X":
            if firstValue == nil {
                firstValue = currentValue
                currentValue = nil
            }else {
                if let value = currentValue {
                    currentValue = firstValue * value
                }else{
                    return
                }
            }
        case "-":
            if firstValue == nil {
                firstValue = currentValue
                currentValue = nil

            }else {
                if let value = currentValue {
                    currentValue = firstValue * value
                }else{
                    return
                }
            }
        case "+":
            if firstValue == nil {
                firstValue = currentValue
                currentValue = nil

            }else {
                if let value = currentValue {
                    currentValue = firstValue * value
                }else{
                    return
                }
            }
        case "/":
            if firstValue == nil {
                firstValue = currentValue
                currentValue = nil
            }else {
                if let value = currentValue {
                    currentValue = firstValue * value
                }else{
                    return
                }
            }
        default:
            break
        }
        
    }

}

