//
//  guessClass.swift
//  bull-cow
//
//  Created by User on 01/02/2019.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation

class guess {
    var secrateNumber = ["","","",""]
    var bullGuesses = [Int]()
    var cowGuesses  = [Int]()
    var numberOfGuesses = -1
    
    init(num1: String, num2: String, num3: String, num4: String) {
        secrateNumber = [num1, num2, num3, num4]
    }
    
    func setSecretNumber (num1: String, num2: String, num3: String, num4: String) {
        secrateNumber = [num1, num2, num3, num4]
    }
    
    
    func checkNewGuess(num1: String, num2: String, num3: String, num4: String) -> [Int] {
        var index = 0
        var currentGuessBull = 0
        var currentGuessCow  = 0
        numberOfGuesses = numberOfGuesses + 1
        let currentGuess = [num1, num2, num3, num4]
        print("\(currentGuess) ... \(secrateNumber)")
        for guess in currentGuess {
            if secrateNumber.contains(guess) {
                if secrateNumber[index] == guess {
                  currentGuessBull = currentGuessBull + 1
                } else {
                  currentGuessCow = currentGuessCow + 1
                }
            }
            index = index + 1
        }
        return [currentGuessBull, currentGuessCow]
    }
}
