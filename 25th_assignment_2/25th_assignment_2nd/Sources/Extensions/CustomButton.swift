//
//  CustomButton.swift
//  25th_assignment_2nd
//
//  Created by 안재은 on 14/10/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = CGFloat(self.layer.frame.height / 2)
        
    }
    
}
