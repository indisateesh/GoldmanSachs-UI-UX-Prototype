//
//  TransactionTVC.swift
//  GoldmanSachs
//
//  Created by Lakshay Sharma on 9/25/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit

class TransactionTVC: UITableViewController {

    
    var account = ["xxx-xxx-x839", "xxx-xxx-x283", "xxx-xxx-x980", "xxx-xxx-x180"]
    var balance = ["234324", "234567", "988802", "29340234"]
    var company = ["LHF-SDFD-82", "DKJFB-SDF-2", "SDFS-3SDF-3", "SDF-34S"]
    var increase = ["+2434", "+234234", "-2349", "+0"]
    override func viewDidLoad() {
        tableView.delegate = self
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nowNow", for: indexPath) as? TTVC
        cell?.account?.text = account[indexPath.item]
        cell?.balance?.text = balance[indexPath.item]
        cell?.Company?.text = company[indexPath.item]
        cell?.increase?.text = increase[indexPath.item]
        cell?.backgroundColor = UIColor(displayP3Red: 134/255, green: 200/255, blue: 200/255, alpha: 0.5)
        return cell!
    }

}
