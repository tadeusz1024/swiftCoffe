//
//  ViewController.swift
//  TrCalculator
//
//  Created by Systemy mobilne on 16.02.2019.
//  Copyright © 2019 Systemy mobilne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calcDisplay: UILabel!
    var userStartTyping = true
    var wynik:String!
    var firstOperand = 0
    var akcja:String!
    var operation = ""
    var secOperand = 0

    
    @IBAction func Potega(_ sender: UIButton) {
        if Int(calcDisplay.text!)! > 0
        {
            secOperand=firstOperand
            for _ in 2 ... Int(calcDisplay.text!)!{
                secOperand = secOperand * firstOperand
            }
        }
        calcDisplay.text = String(firstOperand)
        
       
    }
    
    
    @IBAction func silnia(_ sender: UIButton) {
    }
    
    
    @IBAction func calcAction(_ sender: UIButton) {
        userStartTyping=true
        firstOperand = Int(calcDisplay.text!)!
        operation = sender.currentTitle!
        
        
        wynik=calcDisplay.text
        print("\(calcDisplay.text!)")
        print (calcDisplay.text!)
        print (firstOperand)
        
    }
    
    
    
    @IBAction func equalAction(_ sender: Any) {
        userStartTyping=true
        switch operation {
        case "+" : firstOperand += Int(calcDisplay.text!)!
            
        case "-":firstOperand -= Int(calcDisplay.text!)!
        case "*":firstOperand = firstOperand * Int(calcDisplay.text!)!
        case "/":firstOperand = firstOperand /  Int(calcDisplay.text!)!
        case "=":firstOperand = Int(calcDisplay.text!)!
        case "^":break
        case "!": break
        default:
            calcDisplay.text = "błędne dane"

        }
        
        calcDisplay.text = String(firstOperand)
        
    }
    
    @IBAction func DigitPressed(_ sender: UIButton) {
        
        if userStartTyping {
            calcDisplay.text=sender.currentTitle
            userStartTyping = false
            print("Naciśnięto guzik")}
        else{
            calcDisplay.text=calcDisplay.text!+sender.currentTitle!
        }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

