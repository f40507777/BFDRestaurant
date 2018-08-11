//
//  OrderPageController.swift
//  BFDRestaurant
//
//  Created by Finn on 2018/8/11.
//  Copyright © 2018年 Finn. All rights reserved.
//

import UIKit
import FirebaseDatabase

class OrderPageController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var priceTextField: UITextField!

    var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()

        print("OrderPage")
    }

    @IBAction func sendAction(_ sender: Any) {
        let item = Item(name: nameTextField.text, price: Int(priceTextField.text ?? "0"))
        
        self.ref.child("Order").childByAutoId().setValue(item.dictionary)
    }
}
