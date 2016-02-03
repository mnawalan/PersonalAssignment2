//
//  Data.swift
//  A2
//
//  Created by Mary Kate Nawalaniec on 2/2/16.
//  Copyright © 2016 Mary Kate Nawalaniec. All rights reserved.
//

import Foundation


//contains class for Games and 3 different arrays for xbox games, wii games, and playstation games
enum Classification{
    case Action
    case Adventure
    case Racing
    case Sports
    case Dance
    case Simulation
    case General
}
class Games{
    var name: String
    var yof: Int
    var isFavorite: Bool
    var genre: Classification?
    var isCompleted: Bool
    
    init(name:String, yof: Int, isFavorite: Bool, genre: Classification, isCompleted: Bool){
        
        self.name=name
        self.yof=yof
        self.isFavorite=isFavorite
        self.isCompleted=isCompleted
        self.genre=genre
    }
}

extension Games : CustomStringConvertible{
    var description: String {
        return " \(name)"
    }
}

var gameLibrary : [Games] = [
        Games(name: "Need for Speed Carbon", yof: 2006, isFavorite: false, genre: Classification.Racing, isCompleted: true),
        Games(name: "FIFA 15", yof: 2014, isFavorite: true, genre: Classification.Sports, isCompleted: false),
        Games(name: "Call of Duty 4: Modern Warfare", yof: 2007, isFavorite: false, genre: Classification.Simulation, isCompleted: true)]

var wiiLibrary : [Games] = [
    Games(name: "Wii Sports Resort", yof: 2009, isFavorite: true, genre: Classification.Sports, isCompleted: false),
    Games(name: "Just Dance 4", yof: 2012, isFavorite: false, genre: Classification.Dance, isCompleted: true),
    Games(name: "Mario Party 9", yof: 2012, isFavorite: false, genre: Classification.Action, isCompleted: true)]

var playstationLibrary : [Games] = [
    Games(name: "NBA 2K16", yof: 2015, isFavorite: false, genre: Classification.Sports, isCompleted: false),
    Games(name: "Journey", yof: 2015, isFavorite: false, genre: Classification.Action, isCompleted: true),
    Games(name: "Batman: Arkham Knight", yof: 2015, isFavorite: false, genre: Classification.General, isCompleted: false)]