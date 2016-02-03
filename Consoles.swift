//
//  Consoles.swift
//  A2
//
//  Created by Mary Kate Nawalaniec on 2/2/16.
//  Copyright © 2016 Mary Kate Nawalaniec. All rights reserved.
//

import Foundation
//
//  Console.swift
//  Assignment2
//
//  Created by Mary Kate Nawalaniec on 2/1/16.
//  Copyright © 2016 Mary Kate Nawalaniec. All rights reserved.
//

import Foundation



class Console{
    var consoleName: String
    var consoleManu: String
    var yearOfRelease: String
    var consoleDescript: String
    
    init(consoleName: String, consoleManu:String, yearOfRelease: String, consoleDescript: String){
        self.consoleName=consoleName
        self.consoleManu=consoleManu
        self.yearOfRelease=yearOfRelease
        self.consoleDescript=consoleDescript
    }
    
}

extension Console : CustomStringConvertible{
    var description: String {
        return "\n"
            +  "  \(consoleManu) \(consoleName) \n"
            +  "    Year of Release: \(yearOfRelease)\n"
            +  "   \(consoleDescript)"
    }
}

var consoleLibrary : [Console] = [
    Console(consoleName: "Xbox 360", consoleManu: "Microsoft", yearOfRelease: "2013", consoleDescript: "Successor to original Xbox"),
    Console(consoleName: "Wii", consoleManu: "Nintendo", yearOfRelease: "2006", consoleDescript: "Notable Feature: provides handheld pointing device which detects movements in 3D"),
    Console(consoleName: "PlayStation 4", consoleManu: "Sony", yearOfRelease: "2014", consoleDescript: "Successor to PS3")
]
