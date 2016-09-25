//
//  ViewController.swift
//  GoldmanSachs
//
//  Created by Lakshay Sharma on 9/24/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var passcode: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        username.delegate = self
        passcode.delegate = self
       let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
       let blurEffectView = UIVisualEffectView(effect: blurEffect)
       blurEffectView.frame = self.view.bounds
        //blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        backgroundImage.addSubview(blurEffectView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
    
    
    




