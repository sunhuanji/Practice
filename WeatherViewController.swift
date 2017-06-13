
//
//  WeatherViewController.swift
//  Practice
//
//  Created by Sun Huanji on 16/9/8.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import AlamofireImage
import SDWebImage

class WeatherViewController: UIViewController {
    
    @IBOutlet weak var weatherTitle: UILabel!
    @IBOutlet weak var temp: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    var weathers:Weather?
    override func viewDidLoad() {
        super.viewDidLoad()
        //UIApplication.sharedApplication().statusBarStyle = .Default
        Alamofire.request(.GET, "http://api.openweathermap.org/data/2.5/weather?q="+"mihama"+"&APPID=dadca499d4351f1454d8350592c62641").responseJSON { response in
            
            
            if let values = response.result.value{
                let json = JSON(values)
                let temp1 = json["main"]["temp"].double!
                let temp2 = temp1 - 273.15
                self.temp.text = String(format: "%.1f", temp2) + "℃"
                self.weatherTitle.text = json["weather"][0]["main"].string
                let iconName = json["weather"][0]["icon"].string
                let icon = "http://openweathermap.org/img/w/" + iconName! + ".png"
                let iconUrl = URL(string: icon)
                self.weatherIcon.af_setImageWithURL(iconUrl!)
            }
            
            
            
           // if let userName = json[0]["user"]["name"].string {
                //Now you got your value
            }
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
