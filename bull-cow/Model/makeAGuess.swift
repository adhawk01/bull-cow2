//


import Foundation
class makeAGuess {
    var guesses: [[String]]
    var bullResults: [Int]
    var cowResults: [Int]
    var numberOfGuesses: Int
    
    init(){
        guesses = []
        bullResults = []
        cowResults = []
        numberOfGuesses = 0
    }
    
    func cleanClass () {
        guesses = []
        bullResults = []
        cowResults = []
        numberOfGuesses = 0
    }
    
    func checkAgainstSecretNumber(secNum: [String], newGuess: [String]) -> [Int] {
        var index = 0
        var currentGuessBull = 0
        var currentGuessCow  = 0
        
        for guess in secNum {
            if newGuess.contains(guess) {
                if newGuess[index] == guess {
                    currentGuessBull = currentGuessBull + 1
                } else {
                    currentGuessCow = currentGuessCow + 1
                }
            }
            index = index + 1
        }
        return [currentGuessBull, currentGuessCow]
    }

    func chooseSecretNumber () -> [String] {
        var myArray: [String]
        var newNum = ""
        var newNumNSNumber = 0 as NSNumber
        myArray = []
        for index in 1 ... 4 {
            repeat {
                let randomNum:UInt32 = arc4random_uniform(10)
                newNumNSNumber = Int(randomNum) as NSNumber
                newNum = newNumNSNumber.stringValue
            } while myArray.contains(newNum)
            myArray.append(newNum)
        }
        return myArray
    }
    
    func checkGuess(guess: [String]) -> Bool {
        var answer = true
        var index = 0
        var oneEnteryResults: [Int]
        
        answer = true
        index = 0
        if numberOfGuesses > 0 {
          repeat {
              oneEnteryResults = checkAgainstSecretNumber(secNum: guesses[index], newGuess: guess)
              if oneEnteryResults[0] != bullResults[index] || oneEnteryResults[1] != cowResults[index] {
                  answer = false
              }
              index = index + 1
          } while index < numberOfGuesses
        } else {
            answer = true
        }
        return answer
    }
    
    func makeAGuess () -> [String] {
        var goodGuess = false
        var newGuess: [String]
        repeat {
           newGuess = chooseSecretNumber()
           goodGuess = checkGuess(guess: newGuess)
        } while !goodGuess
        numberOfGuesses = numberOfGuesses + 1
        return newGuess
    }
    
    func storeGuessAndResults (guess: [String], results: [Int]) {
        guesses.append(guess)
        bullResults.append(results[0])
        cowResults.append(results[1])
    }
}
