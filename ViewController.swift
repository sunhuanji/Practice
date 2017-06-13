//
//  ViewController.swift
//  Practice
//
//  Created by Sun Huanji on 16/8/12.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit
import PageMenu
import Alamofire
import SwiftyJSON
import AlamofireImage

class ViewController: UIViewController {
    var PageMenu:CAPSPageMenu?
    var backColor :UIColor = UIColor.black
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Viewを格納する配列
        var controllerArray : [UIViewController] = []
        
        // 追加するViewを作成
        let controller1 = self.storyboard!.instantiateViewController(withIdentifier: "summary") as! Test1TableViewController
        controller1.title = "まとめロッテ"
        controllerArray.append(controller1)
        
        // 追加するViewを作成
        let controller2 = self.storyboard!.instantiateViewController(withIdentifier: "news") as! NewsTableViewController
        controller2.title = "ニュース"
        controllerArray.append(controller2)
        
        
        let controller3 = self.storyboard!.instantiateViewController(withIdentifier: "blog") as! BlogTableViewController
        controller3.title = "選手ブログ"
        controllerArray.append(controller3)
        
        
//        let timelineVC = UserTimelineViewController()   // 追加
//        UIApplication.sharedApplication().keyWindow?.rootViewController = timelineVC    // 追加
//        timelineVC.title = "twitter"
//        controllerArray.append(timelineVC)
        // PageMenuの設定
        
        let parameters: [CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .useMenuLikeSegmentedControl(true),
            .menuItemSeparatorPercentageHeight(0.1)
        ]
        
        // PageMenuのビューのサイズを設定
        PageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRect(x: 0.0, y: 20.0, width: self.view.frame.width, height: self.view.frame.height), pageMenuOptions: parameters)
        
        // PageMenuのビューを親のビューに追加
        self.view.addSubview(PageMenu!.view)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

