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
    var intials: String
    var color: UIColor
    func getIntials() -> String
    {
        return intials
    }
    func getPlayerColor() -> UIColor
    {
        return color
    }
    mutating func setIntials(to intial: String)
    {
        intials = intial
    }
    mutating func setColor(to colors: UIColor)
    {
        color = colors
    }
}

