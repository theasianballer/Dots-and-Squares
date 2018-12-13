//
//  Dot.swift
//  Dots and Squares
//
//  Created by Bellefeuille, Neo M on 12/7/18.
//  Copyright © 2018 Currie, Chance K. All rights reserved.
//

import Foundation

class Dot
{
    var xpos: Int
    var ypos: Int
    var teamNumber: Int
    
    init (_ xPos: Int, _ yPos: Int) {
        self.xpos = xPos
        self.ypos = yPos
        self.teamNumber = 0
    }
    
    func setxpos(setTo: Int)
    {
        xpos = setTo
    }
    func setypos(setTo: Int)
    {
        ypos = setTo
    }
    func getYPos() -> Int
    {
        return ypos
    }
    func getxPos() -> Int
    {
        return xpos
    }
    func setTeamOne(setTo: Int)
    {
        teamNumber = 1
    }
    func setTeamTwo(setTo: Int)
    {
        teamNumber = 2
    }
    func setNoTeam(setTo: Int)
    {
        teamNumber = 0
    }
    func getColor() -> Int
    {
        return teamNumber
    }
    
    
}
