//
//  NewsVCViewController.swift
//  GoldmanSachs
//
//  Created by Lakshay Sharma on 9/24/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit

class NewsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    var newses = ["Barrack Obama Changed Laws Hoping For The Better", "GM Motors Ended Its Sales In Chile Due To American Conflict", "Oil Spill In Alaska Causes Worlds Second Major Oil Spill", "Donald Trump Arrested for Neocolonization", "Apple Sells Out Yet Again With The Release Of The New Iphone", "Could Edward Snowden Have Revealed Too Much About America", "Rupert Grint Opens New Firm, Makes Billions", "Gibberish Makes Jabber To Gibaber In Giberland", "Earth Soon to Cause Losses In Financial Market", "Some Random Article That Popped Into My Mind"]
 
    override func viewDidLoad() {
        table.dataSource = self
        table.delegate = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newses.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hello")
        cell?.textLabel?.text = newses[indexPath.item]
        let image = UIImage(named: "\(indexPath.item + 1).jpeg")
        cell?.imageView?.frame =  CGRect(x: 0, y: 0, width: 50, height: 50)
        cell?.imageView?.image = image
        return cell!
    }
   
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


