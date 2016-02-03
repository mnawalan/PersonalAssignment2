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

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var numOfRows : Int!
        if arrayRow == 0 {
            numOfRows = gameLibrary.count
        }
        else if arrayRow == 1 {
            numOfRows = wiiLibrary.count
        }
        else{
            numOfRows = playstationLibrary.count
            
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
            cell.textLabel?.text = "\(playstationLibrary[indexPath.row].name)"
            
        }
        return cell
    }


    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
      
        if segue.identifier == "toDisplay"{
            let dvc = segue.destinationViewController as! DisplayViewController //dvc means display view controller-- represents display  view controller
            let myIndexPath = self.tableView.indexPathForSelectedRow
            let row = myIndexPath?.row
            dvc.rowValue = row
            dvc.oldArrayRow = arrayRow
        }
    }
    

}
