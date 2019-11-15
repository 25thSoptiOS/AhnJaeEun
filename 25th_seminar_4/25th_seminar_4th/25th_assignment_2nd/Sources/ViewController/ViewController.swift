//
//  ViewController.swift
//  25th_assignment_2nd
//
//  Created by 안재은 on 14/10/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculateLabel: UILabel!
    @IBOutlet weak var clearBtn: UIButton!
    
    var buttonClicked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateButton(sender: UIButton) {
        
        let button = sender.titleLabel?.text
        var value : String
        // number button clicked
        value = calculateLabel.text!

        if buttonClicked {
            
            if (value == "0"){
            
                calculateLabel.text = button!
            
            } else {
            
                calculateLabel.text = calculateLabel.text! + button!
            
            }
            
            // 버튼 클릭에 따른 clear button 변화주기
            if(calculateLabel.text == "0") {
                clearBtn.titleLabel?.text = "AC"
            } else {
                clearBtn.titleLabel?.text = "C"
            }
            
        } else {
            
            // 버튼 클릭에 따른 clear button 변화주기
            if(calculateLabel.text == "0") {
                clearBtn.titleLabel?.text = "AC"
            } else {
                clearBtn.titleLabel?.text = "C"
            }
            
            calculateLabel.text = button!
            buttonClicked = true
        
        }
        
// 노가다 test code
//        for index in 0..<10 {
//            if (button == String(index)) {
//                if (value == "0") {
//                    calculateLabel.text = String(index)
//                    clearBtn.titleLabel?.text = "C"
//                } else {
//                    clearBtn.titleLabel?.text = "C"
//                    calculateLabel.text = calculate! + String(index)
//                }
//
//            }
//            test = 13/2
//            print("test cal : " + String(test))
//            if (button == "+") {
//
//            }
//            //value = calculateLabel.text!
//        }
        
        value = calculateLabel.text!
        
        // print(calculateLabel.text)
        // print(value)
        
        
        if(button == "AC") {
            calculateLabel.text = "0"
            value = calculateLabel.text!
            
// --> 노가다 test code
            //print(button!)
//            if (value != "0") {
//                //calculateLabel.text = String(value[value.startIndex ..< value.index(value.endIndex, offsetBy: -1)])
//                calculateLabel.text = "0"
//                value = calculateLabel.text!
//                // print("C is acting")
//            } else if (value == "0"){
//                calculateLabel.text = "0"
//                value = calculateLabel.text!
//                // print("AC clicked")
//            }
            //print(button!)
            //print(value)
        }
        
        if(button == "+"){

// 노가다 테스트 코드
//            temp = value
//
//            print("value: " + temp)
//            print("calculate: " + calculate!)
//
//            value = "0"
//
//            print("value: " + value)
//            print("temp: " + temp)
//            print("calculate: " + calculate!)
//            //value = ""
//            calculateLabel.text = temp
//            for index in 0..<10 {
//                if (button == String(index)) {
//                    print("In value: " + value)
//                    if (value == "0") {
//                        //calculateLabel.text = ""
//                        calculateLabel.text = String(index)
//                    } else {
//                        //calculateLabel.text = ""
//                        calculateLabel.text = calculate! + String(index)
//                    }
//                }
//                //value = calculateLabel.text!
//            }
            //output = output + Int(value)!
            //print(output)
            
        }
        
        if(button == "−"){
            
        }
        
        if(button == "×"){
            
        }
        
        if(button == "÷"){
            
        }
        
        if(button == "="){

        }
        
    }

}
