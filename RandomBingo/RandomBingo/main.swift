//
//  main.swift
//  RandomBingo
//
//  Created by 안의진 on 2023/03/14.
//

// 메인 함수부터 실행된다.
import Foundation

print("Hello, World!")

var comChoice = Int.random(in: 1...100)

var myChoise : Int = 0

while true {
    var userInput = readLine()
    
    if let input = userInput {
        if let number = Int(input) {
            myChoise = number
        }
    }
        
    if comChoice == myChoise {
        print("bingo")
        break
    }
    else if comChoice > myChoise {
        print("up")
    }
    else {
        print("down")
    }
}

