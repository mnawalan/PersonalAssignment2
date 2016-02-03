//
//  Data.swift
//  A2
//
//  Created by Mary Kate Nawalaniec on 2/2/16.
//  Copyright © 2016 Mary Kate Nawalaniec. All rights reserved.
//

import Foundation

enum Classification{
    case Action
    case Adventure
    case Simulation
    case Sports
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
        Games(name: "FIFA", yof: 2015, isFavorite: true, genre: Classification.Sports, isCompleted: false),
        Games(name: "NBA 2k16", yof: 2016, isFavorite: false, genre: Classification.Sports, isCompleted: false),
        Games(name: "Call of Duty", yof: 2008, isFavorite: false, genre: Classification.Action, isCompleted: true)]

var wiiLibrary : [Games] = [
    Games(name: "Wii Sports", yof: 2015, isFavorite: true, genre: Classification.Sports, isCompleted: false),
    Games(name: "Wii Fit", yof: 2016, isFavorite: false, genre: Classification.Sports, isCompleted: false),
    Games(name: "Super Mario Bros", yof: 2008, isFavorite: false, genre: Classification.Action, isCompleted: true)]

var nintendoLibrary : [Games] = [
    Games(name: "mario", yof: 2015, isFavorite: true, genre: Classification.Sports, isCompleted: false),
    Games(name: "game2", yof: 2016, isFavorite: false, genre: Classification.Sports, isCompleted: false),
    Games(name: "game3", yof: 2008, isFavorite: false, genre: Classification.Action, isCompleted: true)]