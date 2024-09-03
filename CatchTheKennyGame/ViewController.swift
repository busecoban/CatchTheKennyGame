//
//  ViewController.swift
//  CatchTheKennyGame
//
//  Created by Buse Çoban on 2.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    
    var timer = Timer()
    
    var counter = 0
    
    var hideTimer = Timer()
    
    var thiefArray = [UIImageView]()
    
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
        
        
        thiefArray = [ thief1 , thief2, thief3, thief4, thief5, thief6, thief7, thief8, thief9]
        
        counter = 10
        timeLabel.text = String(counter)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(decreaseTime), userInfo: nil, repeats: true)
        
        hideTimer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(hideThief), userInfo: nil, repeats: true)
        
        hideThief()
        
    }
    
    @objc func hideThief(){
        for thief in thiefArray{
            thief.isHidden=true
        }
        
       let random = Int ( arc4random_uniform(UInt32(thiefArray.count-1)))
        
        thiefArray[random].isHidden=false
        
        
    }
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text="Score: \(score)"

    }
    @objc func decreaseTime(){
        counter -= 1
        timeLabel.text=String(counter)
        
        if(counter==0){
            timer.invalidate()
            hideTimer.invalidate()
            
            for thief in thiefArray{
                thief.isHidden=true
            }
            
            let alert = UIAlertController(title: "The end", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title:"ok" ,style: UIAlertAction.Style.cancel ,handler: nil)
            
            let replayButton = UIAlertAction(title:"Replay" ,style: UIAlertAction.Style.default){
                (UIAlertAction) in
                
                self.score = 0
                self.scoreLabel.text="Score: \(self.score)"
                self.counter = 10
                self.timeLabel.text=String(self.counter)
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.decreaseTime), userInfo: nil, repeats: true)
                
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hideThief), userInfo: nil, repeats: true)
            }
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert,animated: true,completion: nil)
            
        }

    }


}

