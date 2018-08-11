//
//  Order.swift
//  BFDRestaurant
//
//  Created by Finn on 2018/8/11.
//  Copyright © 2018年 Finn. All rights reserved.
//

import Foundation

struct Order: Codable {
    var items: [Item]
    var total: Int
}

