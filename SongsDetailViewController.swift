//
//  SongsDetailViewController.swift
//  Practice
//
//  Created by Sun Huanji on 16/8/24.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit

class SongsDetailViewController: UIViewController {

    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var playerLyrics: UILabel!
    @IBOutlet weak var songsVedio: UIWebView!
    var player: Player!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let youtubeURL = player.link
        playerName.text = player.name
        playerLyrics.text = player.lyrics
        songsVedio.allowsInlineMediaPlayback = true
        songsVedio.loadHTMLString("<iframe width=\"\(songsVedio.frame.width)\" height=\"\(songsVedio.frame.height)\" src=\"\(youtubeURL)?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
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
