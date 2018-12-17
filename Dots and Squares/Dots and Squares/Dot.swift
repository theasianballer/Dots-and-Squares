//
//  Dot.swift
//  Dots and Squares
//
//  Created by Bellefeuille, Neo M on 12/7/18.
//  Copyright © 2018 Currie, Chance K. All rights reserved.
//

import Foundation

struct Dot
{
    var xpos: Int
    var ypos: Int
    var teamNumber: Int
    
    init (_ xPos: Int, _ yPos: Int) {
        self.xpos = xPos
        self.ypos = yPos
        self.teamNumber = 0
    }
    
    mutating func setxpos(to xPos: Int)
    {
        xpos = xPos
    }
    mutating func setypos(to yPos: Int)
    {
        ypos = yPos
    }
    func getYPos() -> Int
    {
        return ypos
    }
    func getxPos() -> Int
    {
        return xpos
    }
    mutating func setTeam(to team: Int)
    {
        teamNumber = team
    }
    func getColor() -> Int
    {
        return teamNumber
    }
    
    
}
