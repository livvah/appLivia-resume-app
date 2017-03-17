//
//  TableViewCell.swift
//  appLivia
//
//  Created by COSC3326 on 3/2/17.
//  Copyright © 2017 COSC3326. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var lblCategory: UILabel!

}
