//
//  GamesTableViewController.swift
//  A2
//
//  Created by Mary Kate Nawalaniec on 2/2/16.
//  Copyright © 2016 Mary Kate Nawalaniec. All rights reserved.
//

import UIKit

class GamesTableViewController: UITableViewController {

    
    var arrayRow: Int!
    
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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var numOfRows : Int!
        if arrayRow == 0 {
            numOfRows = gameLibrary.count
        }
        else if arrayRow == 1 {
            numOfRows = wiiLibrary.count
        }
        else{
            numOfRows = nintendoLibrary.count
            
        }
        return numOfRows
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("gamesCell", forIndexPath: indexPath)
        if arrayRow == 0 {
            cell.textLabel?.text = "\(gameLibrary[indexPath.row].name)"
        }
        else if arrayRow == 1 {
            cell.textLabel?.text = "\(wiiLibrary[indexPath.row].name)"
        }
        else{
            cell.textLabel?.text = "\(nintendoLibrary[indexPath.row].name)"
            
        }
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

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toDetails"{
            let dvc = segue.destinationViewController as! DetailsTableViewController //dvc means detail view controller-- represents details table view controller
            let myIndexPath = self.tableView.indexPathForSelectedRow
            let row = myIndexPath?.row
            dvc.rowValue = row
            dvc.oldArrayRow = arrayRow
        }
    }
    

}
