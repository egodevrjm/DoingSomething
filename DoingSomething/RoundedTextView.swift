//
//  RoundedTextView.swift
//  DoingSomething
//
//  Created by Ryan Morrison on 11/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class RoundedTextView: UITextView {

   
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 7.0
        backgroundColor = UIColor(displayP3Red: 242/255, green: 242/255, blue: 242/255, alpha: 1.0)
    }
 

}
