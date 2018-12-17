//
//  Square.swift
//  Dots and Squares
//
//  Created by Zhang, Matthew on 12/17/18.
//  Copyright © 2018 Currie, Chance K. All rights reserved.
//

import Foundation
import UIKit

struct Square {
    var xPos: Int
    var yPos: Int
    var xIndex: Int
    var yIndex: Int
    var color: UIColor
    
    init(xIndex _xIndex: Int, yIndex _yIndex: Int) {
        xIndex = _xIndex
        yIndex = _yIndex
        
        color = .init(red: 0, green: 0, blue: 0, alpha: 0)
        
        xPos = xIndex * 50
        yPos = yIndex * 50
    }
}
