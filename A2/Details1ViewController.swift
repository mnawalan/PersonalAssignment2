//
//  Details1ViewController.swift
//  A2
//
//  Created by Mary Kate Nawalaniec on 2/2/16.
//  Copyright © 2016 Mary Kate Nawalaniec. All rights reserved.
//

import UIKit

class Details1ViewController: UIViewController {
    
    var arrayIndex: Int!

    @IBOutlet weak var gameLabel: UILabel!
    
  
    var gameString = "is this working"
    var goto : Int = 0
     func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        goto = indexPath.row
        gameString = "\(gameLibrary[goto])"
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            gameLabel.text = gameString
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
       // gameLabel?.text = "\(gameLibrary[goto!])"
    
   /* override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "toDetail1"{
            let navigationController = segue.destinationViewController as! UINavigationController
            let vc = navigationController.topViewController as! Details1ViewController
            let indexPath : NSIndexPath = self.tableView.(GameTableViewController, didSelectRowAtIndexPath: NSIndexPath)
            vc.gameString = "\(gameLibrary[indexPath.row])"
        }
    }*/
    


}