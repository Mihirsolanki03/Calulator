//
//  ViewController.swift
//  Calculator
//
//  Created by Mihir Solanki on 24/05/21.
//

import UIKit
enum Operation:String {
    case add = "+"
    case sub = "-"
    case multi = "*"
    case divide = "/"
    case null = "Null"
    
    
}
class ViewController: UIViewController {
    @IBOutlet weak var Outputlbl: UILabel!
    
    var runningnumber = ""
    var leftvalue = ""
    var rightvalue = ""
    var result = ""
    var currentOperation: Operation = .null
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Outputlbl.text = "0"
    }

    @IBAction func NumberPressed(_ sender: RoundButton) {
        if runningnumber.count <= 5{
            runningnumber += "\(sender.tag)"
            Outputlbl.text = runningnumber
        }
        
    }
    
    @IBAction func AcPressed(_ sender: RoundButton) {
        runningnumber = ""
        leftvalue = ""
        rightvalue = ""
        result = ""
        currentOperation = .null
        Outputlbl.text = "0"
    }
    @IBAction func dotPressed(_ sender: RoundButton) {
        if runningnumber.count <= 5{
            runningnumber += "."
            Outputlbl.text = runningnumber
            
        }
       
    }
    @IBAction func equalPressed(_ sender: RoundButton) {
        operation(operation: currentOperation)
    }
    
    @IBAction func addPressed(_ sender: RoundButton) {
        operation(operation: .add)
    }
    
    @IBAction func subPressed(_ sender: RoundButton) {
        operation(operation: .sub)
    }
    
    @IBAction func mutipressed(_ sender: RoundButton) {
        operation(operation: .multi)
    }
    
    @IBAction func dividePressed(_ sender: RoundButton) {
        operation(operation: .divide)
    }
    
    func operation(operation:Operation){
        if currentOperation != .null {
            if runningnumber != ""{
                rightvalue = runningnumber
                runningnumber = ""
                
                if currentOperation == .add{
                    result = "\(Double(leftvalue)! + Double(rightvalue)!)"
                    
                }else if currentOperation == .sub{
                    result = "\(Double(leftvalue)! - Double(rightvalue)!)"
                }else if currentOperation == .multi{
                    result = "\(Double(leftvalue)! * Double(rightvalue)!)"
                    
                }else if currentOperation == .divide{
                    result = "\(Double(leftvalue)! / Double(rightvalue)!)"
                    
                }
                leftvalue = result
                Outputlbl.text = result
            }
            currentOperation = operation
        }else{
                leftvalue = runningnumber
                runningnumber = ""
                currentOperation = operation
            }
        }
    }
    


