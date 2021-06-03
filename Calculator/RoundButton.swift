//
//  RoundButton.swift
//  Calculator
//
//  Created by Mihir Solanki on 24/05/21.
//

import UIKit
@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var roundButton:Bool = false {
        didSet{
            if roundButton{
                layer.cornerRadius = frame.height/2
                
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if roundButton{
            layer.cornerRadius = frame.height/2
        }
    }
    
    
    }


