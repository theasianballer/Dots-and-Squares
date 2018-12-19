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
}
