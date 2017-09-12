//
//  BigTextCell.swift
//  DoingSomething
//
//  Created by Ryan Morrison on 11/09/2017.
//  Copyright © 2017 egoDev. All rights reserved.
//

import UIKit

class BigTextCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        textLabel?.font = UIFont(name: "BodoniSvtyTwoSCITCTT-Book", size: 30)
        detailTextLabel?.font = UIFont(name: "Futura", size: 13)
        detailTextLabel?.textColor = UIColor(displayP3Red: 0.7699999809, green: 0.0900000036, blue: 0.1099999994, alpha: 1.0000000000)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
