//
//  TTVCTableViewCell.swift
//  GoldmanSachs
//
//  Created by Lakshay Sharma on 9/25/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit

class TTVC: UITableViewCell {
    @IBOutlet weak var balance: UILabel!
    @IBOutlet weak var increase: UILabel!
    @IBOutlet weak var Company: UILabel!
    @IBOutlet weak var account: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
