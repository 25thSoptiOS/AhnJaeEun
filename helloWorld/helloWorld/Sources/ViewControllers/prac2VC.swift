//
//  prac2VC.swift
//  helloWorld
//
//  Created by 안재은 on 28/09/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class prac2VC: UIViewController {

    //인사하기 버튼 클릭 시 text 변경해줄 label
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //클릭 시 text 변경해줄 button
    @IBAction func helloBtn(_ sender: Any) {
        
        helloLabel.text = "SOPT!"
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
