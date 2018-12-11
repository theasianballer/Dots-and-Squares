//
//  EndViewController.swift
//  Dots and Squares
//
//  Created by Krovvidi, Sampreeth on 12/11/18.
//  Copyright © 2018 Currie, Chance K. All rights reserved.
//

import UIKit

class EndViewController: UIViewController{
    
    @IBOutlet var scoreLabel: UILabel!
    
    var scoreData:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Restarts the Dots and Squares game
    @IBAction func restartGame(_ sender: Any){
        self.dismiss(animated: false, completion: nil)
        self.presentingViewController?.dismiss(animated: false, completion: nil)
    }
}
