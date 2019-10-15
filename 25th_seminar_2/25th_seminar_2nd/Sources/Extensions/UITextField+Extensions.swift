//
//  UITextField+Extensions.swift
//  25th_seminar_2nd
//
//  Created by 안재은 on 14/10/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

extension UITextField {
    
    func setBottomBorder() {
        
      self.borderStyle = .none
      self.layer.backgroundColor = UIColor.clear.cgColor

      self.layer.masksToBounds = false
      self.layer.shadowColor = UIColor.black.cgColor
      self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
      self.layer.shadowOpacity = 1.0
      self.layer.shadowRadius = 0.0
        
    }
    
}
