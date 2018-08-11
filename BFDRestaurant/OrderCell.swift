//
//  OrderCell.swift
//  BFDRestaurant
//
//  Created by Finn on 2018/8/11.
//  Copyright © 2018年 Finn. All rights reserved.
//

import UIKit

class OrderCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
