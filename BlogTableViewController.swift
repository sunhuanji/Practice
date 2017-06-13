//
//  BlogTableViewController.swift
//  Practice
//
//  Created by Sun Huanji on 16/8/24.
//  Copyright © 2016年 Sun Huanji. All rights reserved.

import UIKit
import Alamofire
import SwiftyJSON
import AlamofireImage
import SDWebImage

class BlogTableViewController: UITableViewController {
    
   // var links = ["katsuya-kakunaka","area66-yoshifumi-okada","kiyota-1"]
    var links = ["kiyota-1"]
    var articles:[[String:String?]]=[]
    var entries: [Entry] = []
    var sorted:[Entry] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 0...self.links.count-1 {
            Alamofire.request(.GET, "https://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=100&q=http://feedblog.ameba.jp/rss/ameblo/" + links[index]).responseJSON { response in
                if let values = response.result.value {
                    JSON(values)["responseData"]["feed"]["entries"].forEach {i,value in
                        self.entries.append(Entry(
                            publishedDate: value["publishedDate"].string!,
                            title: value["title"].string!,
                            content: value["content"].string!,
                            link: value["link"].string!
                            ))
                    }
                    print(self.entries.count)
                    self.tableView.reloadData()
                }
            }
            

        }
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
        return self.entries.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! Table1ViewCell
        
        let entry = self.entries[indexPath.row]
        cell.cellTitle.text = entry.title
        cell.cellContent.text = entry.content
        cell.link = entry.link
        return cell
        // Configure the cell...
        
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
        //   parent!.navigationController!.pushViewController(detailViewController , animated: true)
        
        let detailVC = segue.destination as! DetailViewController
        detailVC.entry = self.entries[(tableView.indexPathForSelectedRow!.row)]
        
        
    }
    
    
}
