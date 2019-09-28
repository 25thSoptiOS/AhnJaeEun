//
//  prac2secondVC.swift
//  helloWorld
//
//  Created by 안재은 on 28/09/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class prac2secondVC: UIViewController {

    
    //두번 째 화면 text 보여줄 label
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        
        dismiss(animated: true)
        
        /*let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        let firstView = storyboard.instantiateViewController(withIdentifier: "firstView")
        
        present(firstView, animated: true)
        */
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
