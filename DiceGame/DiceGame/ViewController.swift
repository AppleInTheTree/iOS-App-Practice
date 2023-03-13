//
//  ViewController.swift
//  DiceGame
//
//  Created by 안의진 on 2023/03/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstDice.image = diceArray.randomElement()
        secondDice.image = diceArray.randomElement()
    }

    
    @IBAction func button(_ sender: UIButton) {
        
        firstDice.image = diceArray.randomElement()
        secondDice.image = diceArray.randomElement()
        
        
    }
    
}

