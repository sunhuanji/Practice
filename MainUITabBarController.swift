
//
//  UITabBarController.swift
//  Practice
//
//  Created by Sun Huanji on 16/9/20.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit

class MainUITabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // あらかじめ色とフォントファミリーを指定
        let colorKey = UIColor.white
        let colorBg = UIColor.black
        // アイコンの色変えたい
        UITabBar.appearance().tintColor = colorKey
        
        // 背景色変えたい
        UITabBar.appearance().barTintColor = colorBg

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
