//
//  ViewController.swift
//  Dots and Squares
//
//  Created by Currie, Chance K on 12/7/18.
//  Copyright © 2018 Currie, Chance K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Prototype player turn switching
    // Declared enum
    enum currentPlayerTurn {
        case player1
        case player2
    }
    
    // Declared variable using enum
    var currentPlayer = currentPlayerTurn.player1
    
    // Declared button properties variable
    @IBOutlet weak var playerSwitchButtonProperties: UIButton!
    
    // Button action for switching player turn state
    @IBAction func playerSwitchButton(_ sender: UIButton) {
        if currentPlayer == currentPlayerTurn.player1 {
            currentPlayer = currentPlayerTurn.player2
            print("Current player turn is player 2")
            playerSwitchButtonProperties.setTitleColor(UIColor.black, for: UIControlState.normal)
        }
            
        else
        {
            currentPlayer = currentPlayerTurn.player1
            print("Current player turn is player 1")
            playerSwitchButtonProperties.setTitleColor(UIColor.red, for: UIControlState.normal)
        }
    }
    
    // Declared button properties variables
    @IBOutlet weak var button1Outlet: UIButton!
    @IBOutlet weak var button2Outlet: UIButton!
    
    // Action of hititng the first button
    @IBAction func button1(_ sender: UIButton) {
        if currentPlayer == currentPlayerTurn.player1 {
            button1Outlet.isEnabled = false
            button2Outlet.isEnabled = true
            button1Outlet.setTitleColor(UIColor.black, for: UIControlState.normal)
        }
            
        else if currentPlayer == currentPlayerTurn.player2 {
            button1Outlet.isEnabled = false
            button2Outlet.isEnabled = true
            button1Outlet.setTitleColor(UIColor.red, for: UIControlState.normal)
        }
    }
    
    // Action of hitting the second button
    @IBAction func button2(_ sender: UIButton) {
        if currentPlayer == currentPlayerTurn.player1 {
            button1Outlet.isEnabled = true
            button2Outlet.isEnabled = false
            button1Outlet.setTitleColor(UIColor.red, for: UIControlState.normal)
            currentPlayer = currentPlayerTurn.player2
            print("Current turn is player 2")
        }
            
        else if currentPlayer == currentPlayerTurn.player2 {
            button1Outlet.isEnabled = true
            button2Outlet.isEnabled = false
            button1Outlet.setTitleColor(UIColor.black, for: UIControlState.normal)
            currentPlayer = currentPlayerTurn.player1
            print("Current turn is player 1")
        }
    }
    
    // Loading method
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Warning method
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

