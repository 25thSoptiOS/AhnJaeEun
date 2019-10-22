//
//  ViewController.swift
//  25th_assignment_2nd
//
//  Created by 안재은 on 14/10/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculatedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatedLabel.text = "0"
    }
    
    // 변수 정의
    // 01. 라벨에 출력될 값을 결정할 displayText, 최초 nil
    var displayText: String? = nil
    
    // 02. 연산 기호를 저장해둘 operatorSign, 최초 nil
    var operatorSign: String? = nil
    
    // 03. 연산을 기다리는 값과 현재 인풋된 값을 구분하는 변수
    //var firstNum: Int = 0
    var firstNum = 0
    //var secondNum: Int = 0
    var secondNum = 0
    var divNum : Float = 0
    
    // number button function
    // 입력된 수가 있느냐 없느냐에 따라 조건 처리해주기
    @IBAction func numBtn(numBtn: UIButton) {
        
        if displayText == nil {
            displayText = (numBtn.titleLabel?.text)!
        } else {
            displayText? += (numBtn.titleLabel?.text)!
        }
        
        calculatedLabel.text = displayText
    }
    
    
    // clear button function
    // if number clicked : AC -> C
    // if noting in calculatedLabel : C -> AC
    @IBAction func clearBtn(resetBtn: UIButton) {
        calculatedLabel.text = "0"
        displayText = nil
        firstNum = 0
        secondNum = 0
        divNum = 0
        operatorSign = nil
    }

    @IBAction func operation(signBtn: UIButton) {
        if displayText != nil {
            print("test: 연산자 제대로 클릭됨")
            Operation()
            operatorSign = signBtn.titleLabel!.text!
            displayText = nil
            
            if operatorSign == "÷" {
                if signBtn.titleLabel?.text == "=" {
                    calculatedLabel.text = String(divNum)
                }
                print("uhoh")
            } else {
           // if signBtn.titleLabel!.text! == "=" {
                // 나눗셈인 경우
                print("ohmygosh")
                calculatedLabel.text = String(firstNum)
            //}
            }
            
        } else {
            operatorSign = signBtn.titleLabel!.text!
            print("test: 입력된 수 없을 때도 연산자 제대로 클릭됨")
        }
    }

    func Operation() {
        if operatorSign == nil {
            firstNum = Int(displayText!)!
        }else {
            secondNum = Int(displayText!)!
            if operatorSign == "+" {
                firstNum += secondNum
            }else if operatorSign == "−" {
                firstNum -= secondNum
            }else if operatorSign == "×" {
                firstNum *= secondNum
            }else if operatorSign == "÷" {
                
                //나눗셈의 경우 소숫점 처리해주기
                var test: Float = 0
                var test2:Float = 0
                test = Float(firstNum)
                test2 = Float(secondNum)
                
                test /= test2
                
                divNum = test
                
                print(divNum)
                
                firstNum /= secondNum
                
            }
            calculatedLabel.text = String(firstNum)
        }
    }

}
