//
//  Player.swift
//  Dots and Squares
//
//  Created by Bellefeuille, Neo M on 12/17/18.
//  Copyright © 2018 Currie, Chance K. All rights reserved.
//
import Foundation
import UIKit

struct Player
{
    var initials: String
    var color: UIColor
    
    init(name _initials: String, color _color: UIColor) {
        initials = _initials
        color = _color
    }
    
    func getInitials() -> String
    {
        return initials
    }
    func getPlayerColor() -> UIColor
    {
        return color
    }
    mutating func setInitials(to initial: String)
    {
        initials = initial
    }
    mutating func setColor(to colors: UIColor)
    {
        color = colors
    }
}

