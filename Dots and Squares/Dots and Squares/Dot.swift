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
    var xpos = 0
    var ypos = 0
    var teamColorNumber = 0
    
    func setxpos(setTo: Int)
    {
        xpos = setTo
    }
    func setypos(setTo: Int)
    {
        ypos = setTo
    }
    func setColorTeamOne(setTo: Int)
    {
        teamColorNumber = 1
    }
    func setColorTeamTwo(setTo: Int)
    {
        teamColorNumber = 2
    }
    func setColorNoTeam(setTo: Int)
    {
        teamColorNumber = 0
    }
    func getColor() -> Int
    {
        return teamColorNumber
    }
}
