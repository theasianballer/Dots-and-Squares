//
//  ViewController.swift
//  Dots and Squares
//
//  Created by Currie, Chance K on 12/7/18.
//  Copyright © 2018 Currie, Chance K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dotArray: [[Dot]] = []
    var lineArray: [[Line]] = []
    var squareArray: [[Square]] = []

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
        } else {
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
        
        generateSquareArray(5, 6);
        generateLineArray(5, 6);
        generateDotArray(5, 6);
        
    }
    
    // Warning method
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateLineArray(_ x: Int, _ y: Int) {
        for i in 0...(2*y) {
            lineArray.append([Line]())
            for j in 0...(x - (i+1)%2) {
                lineArray[i].append(Line(xIndex: j, yIndex: i))
                var line = lineArray[i][j]
                
                let button = UIButton(frame: CGRect(x: line.xPos+292, y: line.yPos+406, width: line.width, height: line.height))
                button.backgroundColor = UIColor.lightGray
                button.setTitle("", for: [])
                button.addTarget(self, action: #selector(linePressed), for: .touchUpInside)
                
                self.view.addSubview(button)
                line.button = button
            }
        }
                
        print(lineArray)
    }
        
    func generateDotArray(_ x: Int, _ y: Int) {
        for i in 0...(y) {
            dotArray.append([Dot]())
            for j in 0...(x) {
                dotArray[i].append(Dot(j * 50, i * 50))
                let dot = dotArray[i][j]
                
                let button = UIButton(frame: CGRect(x: dot.xpos+292, y: dot.ypos+406, width: 10, height: 10))
                button.backgroundColor = UIColor.black
                button.setTitle("", for: [])
                button.addTarget(self, action: #selector(dotPressed), for: .touchUpInside)
                
                self.view.addSubview(button)
            }
        }
        
        print(dotArray)
    }
    
    func generateSquareArray(_ x: Int, _ y: Int) {
        for i in 0...(y - 1) {
            squareArray.append([Square]())
            for j in 0...(x - 1) {
                squareArray[i].append(Square(xIndex: j, yIndex: i))
                var square = squareArray[i][j]
                
                let button = UIButton(frame: CGRect(x: square.xPos+292, y: square.yPos+406, width: 50, height: 50))
                button.backgroundColor = square.color
                button.setTitle("", for: [])
                button.addTarget(self, action: #selector(dotPressed), for: .touchUpInside)
                
                self.view.addSubview(button)
                square.button = button
            }
        }
        
        print(squareArray)
    }
    
    @IBAction func dotPressed(_ sender: UIButton!) {
        print("pressed a dot")
    }
    @IBAction func linePressed(_ sender: UIButton!) {
        print("pressed a line")
    }
}

