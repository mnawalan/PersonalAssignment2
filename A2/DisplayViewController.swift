//
//  DisplayViewController.swift
//  A2
//
//  Created by Mary Kate Nawalaniec on 2/2/16.
//  Copyright © 2016 Mary Kate Nawalaniec. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    var oldArrayRow: Int!
    var rowValue: Int!
    
    
    @IBOutlet weak var gameNameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var yofLabel: UILabel!
    @IBOutlet weak var favoriteLabel: UILabel!
    @IBOutlet weak var completedLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if oldArrayRow == 0 {
            gameNameLabel.text = gameLibrary[rowValue].name
            genreLabel.text = "\(gameLibrary[rowValue].genre!)"
            yofLabel.text = "\(gameLibrary[rowValue].yof)"
            if gameLibrary[rowValue].isFavorite == true{
                  favoriteLabel.text = "yes"
            }
            else{
                  favoriteLabel.text = "no"
            }
            if gameLibrary[rowValue].isCompleted == true {
                completedLabel.text = "yes"
            }
            else{
                completedLabel.text = "no"
            }
        }
        else if oldArrayRow == 1 {
            gameNameLabel.text = wiiLibrary[rowValue].name
            genreLabel.text = "\(wiiLibrary[rowValue].genre!)"
            yofLabel.text = "\(wiiLibrary[rowValue].yof)"
            if wiiLibrary[rowValue].isFavorite == true{
                favoriteLabel.text = "yes"
            }
            else{
                favoriteLabel.text = "no"
            }
            if wiiLibrary[rowValue].isCompleted == true {
                completedLabel.text = "yes"
            }
            else{
                completedLabel.text = "no"
            }
        }
        else{
            gameNameLabel.text = playstationLibrary[rowValue].name
            genreLabel.text = "\(playstationLibrary[rowValue].genre!)"
            yofLabel.text = "\(playstationLibrary[rowValue].yof)"
            if playstationLibrary[rowValue].isFavorite == true{
                favoriteLabel.text = "yes"
            }
            else{
                favoriteLabel.text = "no"
            }
            if playstationLibrary[rowValue].isCompleted == true {
                completedLabel.text = "yes"
            }
            else{
                completedLabel.text = "no"
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
