//
//  ViewController.swift
//  UpDownGame
//
//  Created by 안의진 on 2023/03/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lableOne: UILabel!
    
    @IBOutlet weak var lableTwo: UILabel!
    
    var comChoice = Int.random(in: 1...10)
    var myChoice = Int.random(in: 1...10)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lableOne.text = "Choose your number"
        lableTwo.text = " "
        
        
        
    }
    
    @IBAction func buttonNumber(_ sender: UIButton) {
        
        var title = sender.currentTitle!
        
        myChoice = Int(title)!
        
        lableOne.text = title
        
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        lableOne.text = "Choose your number"
        lableTwo.text = " "
        comChoice = Int.random(in: 1...10)
    }
    
    @IBAction func selectButton(_ sender: UIButton) {
        
        
        if comChoice == myChoice {
            lableTwo.text = "Bingo"
        }
        else if comChoice < myChoice {
            lableTwo.text = "Down"
        }
        else {
            lableTwo.text = "Up"
        }
    }
    


}

