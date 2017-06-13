//
//  SongsTableViewController.swift
//  Practice
//
//  Created by Sun Huanji on 16/8/24.
//  Copyright © 2016年 Sun Huanji. All rights reserved.
//

import UIKit

class SongsTableViewController: UITableViewController {

    var playNames = ["清田育宏","荻野貴司","角中勝也","岡田幸文"]
    
    var players = [
        Player(name: "清田育宏", lyrics: "GO 清田，清田", link: "https://www.youtube.com/watch?v=ZS1Jhxkm43E"),
        Player(name: "荻野貴司", lyrics: "駆け抜けろホームまで荻野貴司！", link: "https://www.youtube.com/watch?v=Z6SI015aBxM"),
        Player(name: "角中勝也", lyrics: "ララララ　角中　ララララ　角中", link: "https://www.youtube.com/watch?v=I2VY71UGs4w"),
        Player(name: "岡田幸文", lyrics: "打てろう力強く　放て", link: "https://www.youtube.com/watch?v=I2VY71UGs4w")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return playNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)as!SongsTableViewCell
        cell.playerName.text = playNames[indexPath.row]
//        cell.restaurantImage.image = UIImage(named: restaurants[indexPath.row].image)
//        cell.restaurantName.text = restaurants[indexPath.row].name
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.

            let destVC = segue.destination as! SongsDetailViewController
            
            destVC.player = players[(tableView.indexPathForSelectedRow!.row)] 

    }
    

}
