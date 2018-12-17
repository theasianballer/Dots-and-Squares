//
//  ViewController.swift
//  Dots and Squares
//
//  Created by Currie, Chance K on 12/7/18.
//  Copyright © 2018 Currie, Chance K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // The main thing
    
    var playerOneScore = 0
    var playerTwoScore = 0
    
    @IBOutlet weak var scorePlayerOne: UILabel!
    @IBOutlet weak var scorePlayerTwo: UILabel!
    
    
    func increment(for player: Int) {
        if (player == 1) {
            playerOneScore += 1
            scorePlayerOne.text = "Player One: \(playerOneScore)"
        } else if (player == 2) {
            playerTwoScore += 1
            scorePlayerTwo.text = "Player Two: \(playerTwoScore)"
        }
    }
    
    func reset() {
        playerOneScore = 0
        playerTwoScore = 0
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        reset()
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}


