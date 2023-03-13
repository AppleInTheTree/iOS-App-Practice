//
//  ViewController.swift
//  RPSgame
//
//  Created by 안의진 on 2023/03/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startLable: UILabel!
    
    @IBOutlet weak var firstImage: UIImageView!
    
    @IBOutlet weak var firstLable: UILabel!
    
    @IBOutlet weak var secondImage: UIImageView!
    
    @IBOutlet weak var secondLable: UILabel!
    
    var myChoice = Rps.rock

    var comChoice = Rps(rawValue: Int.random(in: 0...2))!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstImage.image = UIImage(named: "ready.png")
        firstLable.text = "Ready"
        
        secondImage.image = UIImage(named: "ready.png")
        secondLable.text = "Ready"

    }

    
    @IBAction func rpsButton(_ sender: UIButton) {
        let title = sender.currentTitle!
        
        switch title {
        case "ROCK":
            myChoice = Rps.rock
        case "SISSOR":
            myChoice = Rps.scissors
        case "PAPER":
            myChoice = Rps.paper
        default:
            break
            
            
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        firstImage.image = UIImage(named: "ready.png")
        firstLable.text = "Ready"
        
        secondImage.image = UIImage(named: "ready.png")
        secondLable.text = "Ready"
        
        startLable.text = "Choose your button"
        
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
    
    @IBAction func selectButton(_ sender: UIButton) {
        
        switch comChoice {
        case .rock:
            firstImage.image =  UIImage(named: "rock.png")
            firstLable.text = "ROCK"
        case .paper:
            firstImage.image =  UIImage(named: "paper.png")
            firstLable.text = "PAPER"
        case .scissors:
            firstImage.image =  UIImage(named: "scissors.png")
            firstLable.text = "SCISSORS"
        }
        
        switch myChoice {
        case .rock:
            secondImage.image =  UIImage(named: "rock.png")
            secondLable.text = "ROCK"
        case .paper:
            secondImage.image =  UIImage(named: "paper.png")
            secondLable.text = "PAPER"
        case .scissors:
            secondImage.image =  UIImage(named: "scissors.png")
            secondLable.text = "SCISSORS"
        }
        
        if comChoice == myChoice {
            startLable.text = "DRAW"
        }
        else if comChoice == .rock && myChoice == .paper {
            startLable.text = "WIN"
        }
        else if comChoice == .scissors && myChoice == .rock {
            startLable.text = "WIN"
        }
        else {
            startLable.text = "LOOSE"
        }
    }
    
}

