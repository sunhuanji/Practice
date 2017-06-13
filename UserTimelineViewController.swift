//
//  UserTimelineViewController.swift
//  Practice
//
//  Created by Sun Huanji on 16/8/23.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit
import TwitterKit

class UserTimelineViewController: TWTRTimelineViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let client = TWTRAPIClient()
        
        Twitter.sharedInstance().logIn { session, error in
            if (session != nil) {
                // ユーザ名からタイムラインを取得
                self.dataSource = TWTRUserTimelineDataSource(screenName: session!.userName, apiClient: client)
            } else {
                print("error: \(error!.localizedDescription)")
            }
        }
        
    }
}
