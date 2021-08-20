//
//  ViewController.swift
//  soccerGame
//
//  Created by wahid tariq on 10/08/21.
//

import UIKit

class ViewController: UIViewController {
var scoreForTeamA = 0
    var scoreForTeamB = 0
    @IBOutlet weak var textLabel1: UILabel!
    @IBOutlet weak var textLabel2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus2Points(_ sender: UIButton) {
  
        
        if sender.currentTitle == "+3 POINTS"{
            scoreForTeamA += 3
              scoreTeamA(Score: scoreForTeamA)
        }else if sender.currentTitle == "+2 POINTS"{
            scoreForTeamA += 2
            scoreTeamA(Score: scoreForTeamA)
            
        }else{
            scoreForTeamA += 1
            scoreTeamA(Score: scoreForTeamA)
        }
      
    }
    
    
    @IBAction func teamBScorePoints(_ sender: UIButton) {
        if sender.currentTitle == "+3 POINTS"{
            scoreForTeamB += 3
              scoreTeamB(Score: scoreForTeamB)
        }else if sender.currentTitle == "+2 POINTS"{
            scoreForTeamB += 2
            scoreTeamB(Score: scoreForTeamB)
            
        }else{
            scoreForTeamB += 1
            scoreTeamB(Score: scoreForTeamB)
        }
        
    }
    
    
  
func scoreTeamA(Score: Int)  {
    
    textLabel1.text = String(Score)
}

    func scoreTeamB(Score: Int)  {
        
        textLabel2.text = String(Score)
    }


    @IBAction func ResetTeamA(_ sender: UIButton) {
        scoreForTeamA = 0
        scoreTeamA(Score: scoreForTeamA)
    }
    

    @IBAction func ResetTeamB(_ sender: UIButton) {
        scoreForTeamB = 0
        scoreTeamB(Score: scoreForTeamB)
      
    }
    
    
    @IBAction func clearBothTeam(_ sender: UIButton) {
    
        scoreForTeamA = 0
        scoreForTeamB = 0
        scoreTeamA(Score: scoreForTeamA)
        scoreTeamB(Score: scoreForTeamB)
    
    }
    
    
}
