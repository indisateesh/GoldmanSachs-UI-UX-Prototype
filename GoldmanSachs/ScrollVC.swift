//
//  ScrollVC.swift
//  GoldmanSachs
//
//  Created by Lakshay Sharma on 9/24/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit

class ScrollVC: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(contentsOfFile: "global-communications-icon"))
        
        //scrollView = UIScrollView(frame: self.view.frame)
        scrollView.backgroundColor = UIColor.red
        //scrollView.contentSize = imageView.bounds.size
        
        //scrollView.addSubview(imageView)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
