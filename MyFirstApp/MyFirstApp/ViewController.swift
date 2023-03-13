//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 안의진 on 2023/03/12.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLanble: UILabel! // @는 어트리부트 <- 이쪽 방향으로 배출한다
        //
    
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        
        mainLanble.text = "Hello World"
        
        mainLanble.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        
        mainLanble.backgroundColor = #colorLiteral(red: 1, green: 0.823869884, blue: 0.4569949508, alpha: 1)
    }
    
}

