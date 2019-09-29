//
//  mainVC.swift
//  25th_assignment_1
//
//  Created by 안재은 on 29/09/2019.
//  Copyright © 2019 SwiftHelloWorld. All rights reserved.
//

import UIKit

class mainVC: UIViewController {

    @IBOutlet weak var navigationTitle: UINavigationItem!
    
    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var likeAnnounceLabel: UILabel!
    
    @IBOutlet weak var likeCountLabel: UILabel!
    
    //현재 지정된 좋아요 개수
    var counter : Int = 113
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set navigation bar
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "logo")
        imageView.image = image
        navigationTitle.titleView = imageView
        
        //set profile image
        profileImg.makeRounded(cornerRadius: 20)
        profileImg.setBorder(borderColor: UIColor.lightGray, borderWidth: 0.5)
        
        //set current like label
        nameLabel.isHidden = true
        likeAnnounceLabel.isHidden = true
        
    }
    
    //heart button click action
    @IBAction func heartBtn(_ sender: UIButton) {
        
        //좋아요 개수 counter
        var myCounter = 0
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected == true {
            nameLabel.isHidden = false
            likeAnnounceLabel.isHidden = false
            
            //버튼 클릭 시 좋아요 개수 증가
            counter += 1
            myCounter += 1
            
            likeCountLabel.text = String(counter) + "개"
            
        } else {
            nameLabel.isHidden = true
            likeAnnounceLabel.isHidden = true
            
            //버튼 클릭 시 좋아요 개수 감소
            counter = counter - 1
            myCounter -= 1
            
            likeCountLabel.text = String(counter) + "개"
        }
        
    }

}
