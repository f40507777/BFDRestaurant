//
//  OrderPageController.swift
//  BFDRestaurant
//
//  Created by Finn on 2018/8/11.
//  Copyright © 2018年 Finn. All rights reserved.
//

import UIKit
import Firebase

class OrderPageController: UIViewController {

    var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()

        print("OrderPage")
    }

}
