//
//  mainVC.swift
//  GoldmanSachs
//
//  Created by Lakshay Sharma on 9/24/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var news: UIButton!
    @IBOutlet weak var accounts: UIButton!
    @IBOutlet weak var locations: UIButton!
    @IBOutlet weak var deposits: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 252/255, green: 238/252, blue: 139/255, alpha: 1.0)
        introLabel.text = "September 25th 2016"
        introLabel.shadowColor =  UIColor(colorLiteralRed: 252/255, green: 238/252, blue: 139/255, alpha: 1.0)

        //self.view.backgroundColor.content
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
   */
    
   
}
