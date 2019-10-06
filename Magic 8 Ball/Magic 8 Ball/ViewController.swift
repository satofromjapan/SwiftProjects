//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Masato Takahashi on 10/6/19.
//  Copyright © 2019 Masato Takahashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0

    @IBOutlet weak var eightBallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBallImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        changeBallImage()
    }
    
    func changeBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        
        eightBallImage.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBallImage()
    }
    
}

