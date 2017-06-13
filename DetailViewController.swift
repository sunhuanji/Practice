//
//  DetailViewController.swift
//  Practice
//
//  Created by Sun Huanji on 16/8/20.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var entry:Entry?
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: self.entry!.link as String)
        let request = URLRequest(url: url!)
        self.webView.loadRequest(request)
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
