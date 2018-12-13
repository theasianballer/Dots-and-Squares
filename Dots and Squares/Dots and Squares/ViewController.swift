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
    
    // The main thing
    // secondary thing
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        generateDotArray(5, 6);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func generateDotArray(_ x: Int, _ y: Int) {
        for i in 0...(y) {
            dotArray.append([Dot]())
            for j in 0...(x) {
                dotArray[i].append(Dot(j * 50, i * 50))
            }
        }
        for row in dotArray {
            for dot in row {
                let button = UIButton(frame: CGRect(x: dot.xpos, y: dot.ypos, width: 10, height: 10))
                button.backgroundColor = UIColor.black
                button.setTitle("", for: [])
                button.addTarget(self, action: #selector(dotPressed), for: .touchUpInside)
                self.view.addSubview(button)
            }
        }
        print(dotArray)
    }
    
    @IBAction func dotPressed(_ sender: UIButton!) {
        print("pressed a dot")
    }
}

