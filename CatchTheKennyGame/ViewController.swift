//
//  ViewController.swift
//  CatchTheKennyGame
//
//  Created by Buse Çoban on 2.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var highscoreLabel: UILabel!
    
    @IBOutlet weak var thief1: UIImageView!
    
    @IBOutlet weak var thief2: UIImageView!
    
    @IBOutlet weak var thief3: UIImageView!
    
    @IBOutlet weak var thief4: UIImageView!
    
    @IBOutlet weak var thief5: UIImageView!
    
    @IBOutlet weak var thief6: UIImageView!
    
    @IBOutlet weak var thief7: UIImageView!
    
    @IBOutlet weak var thief8: UIImageView!
    
    @IBOutlet weak var thief9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        scoreLabel.text="Score: \(score)"
        
        thief1.isUserInteractionEnabled = true
        thief2.isUserInteractionEnabled = true
        thief3.isUserInteractionEnabled = true
        thief4.isUserInteractionEnabled = true
        thief5.isUserInteractionEnabled = true
        thief6.isUserInteractionEnabled = true
        thief7.isUserInteractionEnabled = true
        thief8.isUserInteractionEnabled = true
        thief9.isUserInteractionEnabled = true
        
        
        let recognizer1=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9=UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        thief1.addGestureRecognizer(recognizer1)
        thief2.addGestureRecognizer(recognizer2)
        thief3.addGestureRecognizer(recognizer3)
        thief4.addGestureRecognizer(recognizer4)
        thief5.addGestureRecognizer(recognizer5)
        thief6.addGestureRecognizer(recognizer6)
        thief7.addGestureRecognizer(recognizer7)
        thief8.addGestureRecognizer(recognizer8)
        thief9.addGestureRecognizer(recognizer9)
        
        
        
    }
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text="Score: \(score)"

    }


}

