//
//  SongsTableViewCell.swift
//  Practice
//
//  Created by Sun Huanji on 16/8/24.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit

class SongsTableViewCell: UITableViewCell {

    @IBOutlet weak var playerName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
