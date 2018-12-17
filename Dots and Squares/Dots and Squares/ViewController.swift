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
    
    // The main thing
    // secondary thing
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        generateLineArray(5, 6);
        generateDotArray(5, 6);
        generateSquareArray(5, 6);
    }

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
                squareArray[i].append(Square(xIndex: j * 50, yIndex: i * 50))
                var square = squareArray[i][j]
                
                let button = UIButton(frame: CGRect(x: square.xPos+292, y: square.yPos+406, width: 50, height: 50))
                button.backgroundColor = square.color
                button.setTitle("", for: [])
                button.addTarget(self, action: #selector(dotPressed), for: .touchUpInside)
                
                self.view.addSubview(button)
                square.button = button
            }
        }
    }
    
    @IBAction func dotPressed(_ sender: UIButton!) {
        print("pressed a dot")
    }
    @IBAction func linePressed(_ sender: UIButton!) {
        print("pressed a line")
    }
    @IBAction func squarePressed(_ sender: UIButton!) {
        print("pressed a square")
    }
}

