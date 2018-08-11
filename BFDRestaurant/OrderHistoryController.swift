//
//  OrderHistoryController.swift
//  BFDRestaurant
//
//  Created by Finn on 2018/8/11.
//  Copyright © 2018年 Finn. All rights reserved.
//

import UIKit
import FirebaseDatabase

class OrderHistoryController: UITableViewController {

    var items: [Item] = []

    
    var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()

        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        ref.child("Order").observeSingleEvent(of: .value, with: { (snapshot) in


        }) { (error) in
            print(error.localizedDescription)
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell?  = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = items[indexPath.row].name
        
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
}
