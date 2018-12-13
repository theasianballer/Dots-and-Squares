//
//  Line.swift
//  Dots and Squares
//
//  Created by Zhang, Matthew on 12/11/18.
//  Copyright © 2018 Currie, Chance K. All rights reserved.
//

import Foundation
import UIKit

struct Line {
    var xPos: Int
    var yPos: Int
    var xIndex: Int
    var yIndex: Int
    var color: UIColor
    var activated: Bool
    var orientation: Orientation
    
    init(xIndex _xIndex: Int, yIndex _yIndex: Int) {
        xIndex = _xIndex
        yIndex = _yIndex
        
        orientation = yIndex % 2 == 0 ? .HORIZONTAL : .VERTICAL
        
        color = UIColor.lightGray
        activated = false
        
        xPos = 50 * xIndex
        yPos = (yIndex / 2) * 50
    }
    
    mutating func setActive() {
        guard !activated else { return }
        
        activated = true
        color = UIColor.black
    }
}


public enum Orientation {
    case HORIZONTAL
    case VERTICAL
}
