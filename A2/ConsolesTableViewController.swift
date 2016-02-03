//
//  ConsolesTableViewController.swift
//  A2
//
//  Created by Mary Kate Nawalaniec on 2/2/16.
//  Copyright © 2016 Mary Kate Nawalaniec. All rights reserved.
//

import UIKit

class ConsolesTableViewController: UITableViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return consoleLibrary.count
    }

  
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("consoleCell", forIndexPath: indexPath)
        cell.textLabel?.text = "\(consoleLibrary[indexPath.row].consoleManu) \(consoleLibrary[indexPath.row].consoleName)"
        return cell
    }
 
  
    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toGames"{
            let gvc = segue.destinationViewController as! GamesTableViewController //gvc means game view controller-- represents games table view controller
            let myIndexPath = self.tableView.indexPathForSelectedRow
            let row = myIndexPath?.row
            gvc.arrayRow = row
        }
    }

}
