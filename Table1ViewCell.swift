//
//  Table1ViewCell.swift
//  Practice
//
//  Created by Sun Huanji on 16/8/20.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage
import SwiftyJSON

class Table1ViewCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellContent: UILabel!
    @IBOutlet weak var cellTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    let ogpApi = "http://api.hitonobetsu.com/ogp/analysis?url=";
    
    var link: String! {
        didSet {
            Alamofire.request(.GET, ogpApi + link).responseJSON { response in
                if let imageUrl = response.result.value?["image"] as? String {
                    self.setThumbnailImageView(URL(string: imageUrl))
                }
            }
        }
    }
    
    func setThumbnailImageView(_ imageUrl: URL!){
        self.cellImage.sd_setImage(with: imageUrl){
            (image, error, cacheType, url)->Void in
            UIView.animate(withDuration: 0.25, animations: {
                self.cellImage.alpha = 1
            })
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
