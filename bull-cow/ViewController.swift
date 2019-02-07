//
//  ViewController.swift
//  bull-cow
//
//  Created by User on 31/01/2019.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nextLabel = "1"
    var currentPhase = "choosing Number"
    var myGuess = guess(num1: "", num2: "", num3: "", num4: "")
    var yourGuess = guess(num1: "", num2: "", num3: "", num4: "")
    var smartMakeAGuess = makeAGuess()
    
    @IBOutlet weak var deleteButton: UIButton!
    var numOfGuesses = 0

    @IBOutlet weak var gameResultLabel: UILabel!
    @IBOutlet weak var digitBar0: UIButton!
    @IBOutlet weak var digitBar1: UIButton!
    @IBOutlet weak var digitBar2: UIButton!
    @IBOutlet weak var digitBar3: UIButton!
    @IBOutlet weak var digitBar4: UIButton!
    @IBOutlet weak var digitBar5: UIButton!
    @IBOutlet weak var digitBar6: UIButton!
    @IBOutlet weak var digitBar7: UIButton!
    @IBOutlet weak var digitBar8: UIButton!
    @IBOutlet weak var digitBar9: UIButton!
    
    @IBOutlet weak var zeroBtn: UIButton!
    @IBOutlet weak var oneBtn: UIButton!
    @IBOutlet weak var twoBtn: UIButton!
    @IBOutlet weak var threeBtn: UIButton!
    @IBOutlet weak var fourBtn: UIButton!
    @IBOutlet weak var fiveBtn: UIButton!
    @IBOutlet weak var sixBtn: UIButton!
    @IBOutlet weak var sevenBtn: UIButton!
    @IBOutlet weak var eightBtn: UIButton!
    @IBOutlet weak var nineBtn: UIButton!
    
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var secNumberFirst: UILabel!
    @IBOutlet weak var secNumberSecond: UILabel!
    @IBOutlet weak var secNumberThird: UILabel!
    @IBOutlet weak var secNumberForth: UILabel!

    @IBOutlet weak var yourGuessLabel: UILabel!
    @IBOutlet weak var yourGuessBullLabel: UILabel!
    @IBOutlet weak var yourGuessCowLabel: UILabel!
    @IBOutlet weak var myGuessLabel: UILabel!
    @IBOutlet weak var myGuessBullLabel: UILabel!
    @IBOutlet weak var myGuessCowLabel: UILabel!
    
    @IBOutlet weak var yourGuessOne: UILabel!
    @IBOutlet weak var yourGuessTwo: UILabel!
    @IBOutlet weak var yourGuessThree: UILabel!
    @IBOutlet weak var yourGuessFour: UILabel!
    @IBOutlet weak var yourGuessFive: UILabel!
    @IBOutlet weak var yourGuessSix: UILabel!
    @IBOutlet weak var yourGuessSeven: UILabel!
    @IBOutlet weak var myGuessOne: UILabel!
    @IBOutlet weak var myGuessTwo: UILabel!
    @IBOutlet weak var myGuessThree: UILabel!
    @IBOutlet weak var myGuessFour: UILabel!
    @IBOutlet weak var myGuessFive: UILabel!
    @IBOutlet weak var myGuessSix: UILabel!
    @IBOutlet weak var myGuessSeven: UILabel!
    
    
    @IBOutlet weak var yourGuessBullOne: UILabel!
    @IBOutlet weak var yourGuessBullTwo: UILabel!
    @IBOutlet weak var yourGuessBullThree: UILabel!
    @IBOutlet weak var yourGuessBullFour: UILabel!
    @IBOutlet weak var yourGuessBullFive: UILabel!
    @IBOutlet weak var yourGuessBullSix: UILabel!
    @IBOutlet weak var yourGuessBullSeven: UILabel!
    @IBOutlet weak var myGuessBullOne: UILabel!
    @IBOutlet weak var myGuessBullTwo: UILabel!
    @IBOutlet weak var myGuessBullThree: UILabel!
    @IBOutlet weak var myGuessBullFour: UILabel!
    @IBOutlet weak var myGuessBullFive: UILabel!
    @IBOutlet weak var myGuessBullSix: UILabel!
    @IBOutlet weak var myGuessBullSeven: UILabel!
    
    @IBOutlet weak var yourGuessCowOne: UILabel!
    @IBOutlet weak var yourGuessCowTwo: UILabel!
    @IBOutlet weak var yourGuessCowThree: UILabel!
    @IBOutlet weak var yourGuessCowFour: UILabel!
    @IBOutlet weak var yourGuessCowFive: UILabel!
    @IBOutlet weak var yourGuessCowSix: UILabel!
    @IBOutlet weak var yourGuessCowSeven: UILabel!
    @IBOutlet weak var myGuessCowOne: UILabel!
    @IBOutlet weak var myGuessCowTwo: UILabel!
    @IBOutlet weak var myGuessCowThree: UILabel!
    @IBOutlet weak var myGuessCowFour: UILabel!
    @IBOutlet weak var myGuessCowFive: UILabel!
    @IBOutlet weak var myGuessCowSix: UILabel!
    @IBOutlet weak var myGuessCowSeven: UILabel!
    
    func disableAllDigits() {
        zeroBtn.isEnabled = false
        oneBtn.isEnabled = false
        twoBtn.isEnabled = false
        threeBtn.isEnabled = false
        fourBtn.isEnabled = false
        fiveBtn.isEnabled = false
        sixBtn.isEnabled = false
        sevenBtn.isEnabled = false
        eightBtn.isEnabled = false
        nineBtn.isEnabled = false
    }
    func enableDigits () {
        
        if secNumberFirst.text != "0" && secNumberSecond.text != "0" && secNumberThird.text != "0" && secNumberForth.text != "0" {
          zeroBtn.isEnabled = true
        }
        if secNumberFirst.text != "1" && secNumberSecond.text != "1" && secNumberThird.text != "1" && secNumberForth.text != "1" {
          oneBtn.isEnabled = true
        }
        if secNumberFirst.text != "2" && secNumberSecond.text != "2" && secNumberThird.text != "2" && secNumberForth.text != "2" {
          twoBtn.isEnabled = true
        }
        if secNumberFirst.text != "3" && secNumberSecond.text != "3" && secNumberThird.text != "3" && secNumberForth.text != "3" {
          threeBtn.isEnabled = true
        }
        if secNumberFirst.text != "4" && secNumberSecond.text != "4" && secNumberThird.text != "4" && secNumberForth.text != "4" {
          fourBtn.isEnabled = true
        }
        if secNumberFirst.text != "5" && secNumberSecond.text != "5" && secNumberThird.text != "5" && secNumberForth.text != "5" {
          fiveBtn.isEnabled = true
        }
        if secNumberFirst.text != "6" && secNumberSecond.text != "6" && secNumberThird.text != "6" && secNumberForth.text != "6" {
          sixBtn.isEnabled  = true
        }
        if secNumberFirst.text != "7" && secNumberSecond.text != "7" && secNumberThird.text != "7" && secNumberForth.text != "7" {
          sevenBtn.isEnabled = true
        }
        if secNumberFirst.text != "8" && secNumberSecond.text != "8" && secNumberThird.text != "8" && secNumberForth.text != "8" {
          eightBtn.isEnabled = true
        }
        if secNumberFirst.text != "9" && secNumberSecond.text != "9" && secNumberThird.text != "9" && secNumberForth.text != "9" {
          nineBtn.isEnabled = true
        }

    }
    
    func clearNumberLabels () {
        secNumberFirst.text = ""
        secNumberSecond.text = ""
        secNumberThird.text = ""
        secNumberForth.text = ""
        secNumberFirst.backgroundColor = #colorLiteral(red: 0.6740244555, green: 0.5426269163, blue: 0.1843401498, alpha: 0.5684694102)

    }
    
    func resetDigitBar () {
        digitBar0.backgroundColor = UIColor.lightGray
        digitBar1.backgroundColor = UIColor.lightGray
        digitBar2.backgroundColor = UIColor.lightGray
        digitBar3.backgroundColor = UIColor.lightGray
        digitBar4.backgroundColor = UIColor.lightGray
        digitBar5.backgroundColor = UIColor.lightGray
        digitBar6.backgroundColor = UIColor.lightGray
        digitBar7.backgroundColor = UIColor.lightGray
        digitBar8.backgroundColor = UIColor.lightGray
        digitBar9.backgroundColor = UIColor.lightGray
    }
    func newGame() {
        
        clearNumberLabels()
        enableDigits()
        resetDigitBar()
        gameResultLabel.isHidden = true
        enterButton.isEnabled      = false
        yourGuessLabel.isHidden     = true
        yourGuessBullLabel.isHidden = true
        yourGuessCowLabel.isHidden  = true
        myGuessLabel.isHidden       = true
        myGuessBullLabel.isHidden   = true
        myGuessCowLabel.isHidden    = true
        yourGuessOne.isHidden   = true
        yourGuessTwo.isHidden   = true
        yourGuessThree.isHidden = true
        yourGuessFour.isHidden  = true
        yourGuessFive.isHidden  = true
        yourGuessSix.isHidden   = true
        yourGuessSeven.isHidden = true
        myGuessOne.isHidden   = true
        myGuessTwo.isHidden   = true
        myGuessThree.isHidden = true
        myGuessFour.isHidden  = true
        myGuessFive.isHidden  = true
        myGuessSix.isHidden   = true
        myGuessSeven.isHidden = true
        yourGuessBullOne.isHidden   = true
        yourGuessBullTwo.isHidden   = true
        yourGuessBullThree.isHidden = true
        yourGuessBullFour.isHidden  = true
        yourGuessBullFive.isHidden  = true
        yourGuessBullSix.isHidden   = true
        yourGuessBullSeven.isHidden = true
        myGuessBullOne.isHidden   = true
        myGuessBullTwo.isHidden   = true
        myGuessBullThree.isHidden = true
        myGuessBullFour.isHidden  = true
        myGuessBullFive.isHidden  = true
        myGuessBullSix.isHidden   = true
        myGuessBullSeven.isHidden = true
        yourGuessCowOne.isHidden   = true
        yourGuessCowTwo.isHidden   = true
        yourGuessCowThree.isHidden = true
        yourGuessCowFour.isHidden  = true
        yourGuessCowFive.isHidden  = true
        yourGuessCowSix.isHidden   = true
        yourGuessCowSeven.isHidden = true
        myGuessCowOne.isHidden   = true
        myGuessCowTwo.isHidden   = true
        myGuessCowThree.isHidden = true
        myGuessCowFour.isHidden  = true
        myGuessCowFive.isHidden  = true
        myGuessCowSix.isHidden   = true
        myGuessCowSeven.isHidden = true

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        newGame()
   }
  
    
    @IBOutlet var secNumFisrtClicked: UITapGestureRecognizer!
    
    @IBAction func tapFirstClicked(_ sender: Any) {
        secNumberFirst.text = ""
        setNextLabel(next: "1")
        enableDigits()
        enterButton.isEnabled = false
    }
    
    @IBAction func tapSecondClicked(_ sender: Any) {
        secNumberSecond.text = ""
        setNextLabel(next: "2")
        enableDigits()
        enterButton.isEnabled = false
    }
    
    @IBAction func tapThirdClicked(_ sender: Any) {
        secNumberThird.text = ""
        setNextLabel(next: "3")
        enableDigits()
        enterButton.isEnabled = false
    }
    @IBAction func tapForthClicked(_ sender: Any) {
        secNumberForth.text = ""
        setNextLabel(next: "4")
        enableDigits()
        enterButton.isEnabled = false
    }
    

    @IBAction func tapDigitBarClicked(_ sender: UIButton) {
        if sender.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.red
        } else if sender.backgroundColor == UIColor.red {
            sender.backgroundColor = UIColor.lightGray
        } else {
            sender.backgroundColor = UIColor.green
        }
    }

    func chooseSmartGuess () -> [String] {
        var myArray: [String] = []
        var newNum = ""
        var newNumNSNumber = 0 as NSNumber
        for index in 0 ... 3 {
            repeat {
                let randomNum:UInt32 = arc4random_uniform(10)
                newNumNSNumber = Int(randomNum) as NSNumber
                newNum = newNumNSNumber.stringValue
            } while myArray.contains(newNum)
            myArray.append(newNum)
        }
        return myArray
    }

    @IBAction func enterPressed(_ sender: Any) {
        var myGuessNum: [String]
        myGuessNum = []
        var yourResults: [Int]
        var myResults : [Int]
        if currentPhase == "choosing Number" {
          yourGuess.setSecretNumber(num1: secNumberFirst.text!, num2: secNumberSecond.text!, num3: secNumberThird.text!, num4: secNumberForth.text!)
          print ("\(yourGuess.secrateNumber)")
            
          myGuessNum = chooseSmartGuess()
          myGuess.setSecretNumber(num1: myGuessNum[0], num2: myGuessNum[1], num3: myGuessNum[2], num4: myGuessNum[3])
          print(myGuess.secrateNumber)
          instructionLabel.text = "Your Secret number is: \(secNumberFirst.text!)\(secNumberSecond.text!)\(secNumberThird.text!)\(secNumberForth.text!)"
          yourGuessLabel.isHidden     = false
          yourGuessBullLabel.isHidden = false
          yourGuessCowLabel.isHidden  = false
          myGuessLabel.isHidden       = false
          myGuessBullLabel.isHidden   = false
          myGuessCowLabel.isHidden    = false
            
          secNumberFirst.text  = ""
          secNumberSecond.text = ""
          secNumberThird.text  = ""
          secNumberForth.text  = ""
          setNextLabel(next: "1")
          enterButton.isEnabled = false
          enableDigits()

          currentPhase = "Guessing"
        } else if currentPhase == "Guessing" {
            numOfGuesses = numOfGuesses + 1
            yourResults = myGuess.checkNewGuess(num1: secNumberFirst.text!, num2: secNumberSecond.text!, num3: secNumberThird.text!, num4: secNumberForth.text!)
            myGuessNum = smartMakeAGuess.makeAGuess()
            myResults = yourGuess.checkNewGuess(num1: myGuessNum[0], num2: myGuessNum[1], num3: myGuessNum[2], num4: myGuessNum[3])
            smartMakeAGuess.storeGuessAndResults(guess: myGuessNum, results: myResults)
            if numOfGuesses == 1 {
               yourGuessOne.isHidden = false
               yourGuessBullOne.isHidden = false
               yourGuessCowOne.isHidden = false
               yourGuessOne.text = "\(secNumberFirst.text!)\(secNumberSecond.text!)\(secNumberThird.text!)\(secNumberForth.text!)"
               yourGuessBullOne.text = "\(yourResults[0])"
               yourGuessCowOne.text = "\(yourResults[1])"
                
                myGuessOne.isHidden = false
                myGuessBullOne.isHidden = false
                myGuessCowOne.isHidden = false
                myGuessOne.text = "\(myGuessNum[0])\(myGuessNum[1])\(myGuessNum[2])\(myGuessNum[3])"
                myGuessBullOne.text = "\(myResults[0])"
                myGuessCowOne.text = "\(myResults[1])"
                
            }
            if numOfGuesses == 2 {
                yourGuessTwo.isHidden = false
                yourGuessBullTwo.isHidden = false
                yourGuessCowTwo.isHidden = false
                yourGuessTwo.text = "\(secNumberFirst.text!)\(secNumberSecond.text!)\(secNumberThird.text!)\(secNumberForth.text!)"
                yourGuessBullTwo.text = "\(yourResults[0])"
                yourGuessCowTwo.text = "\(yourResults[1])"

                myGuessTwo.isHidden = false
                myGuessBullTwo.isHidden = false
                myGuessCowTwo.isHidden = false
                myGuessTwo.text = "\(myGuessNum[0])\(myGuessNum[1])\(myGuessNum[2])\(myGuessNum[3])"
                myGuessBullTwo.text = "\(myResults[0])"
                myGuessCowTwo.text = "\(myResults[1])"
            }
            if numOfGuesses == 3 {
                yourGuessThree.isHidden = false
                yourGuessBullThree.isHidden = false
                yourGuessCowThree.isHidden = false
                yourGuessThree.text = "\(secNumberFirst.text!)\(secNumberSecond.text!)\(secNumberThird.text!)\(secNumberForth.text!)"
                yourGuessBullThree.text = "\(yourResults[0])"
                yourGuessCowThree.text = "\(yourResults[1])"

                myGuessThree.isHidden = false
                myGuessBullThree.isHidden = false
                myGuessCowThree.isHidden = false
                myGuessThree.text = "\(myGuessNum[0])\(myGuessNum[1])\(myGuessNum[2])\(myGuessNum[3])"
                myGuessBullThree.text = "\(myResults[0])"
                myGuessCowThree.text = "\(myResults[1])"
            }
            if numOfGuesses == 4 {
                yourGuessFour.isHidden = false
                yourGuessBullFour.isHidden = false
                yourGuessCowFour.isHidden = false
                yourGuessFour.text = "\(secNumberFirst.text!)\(secNumberSecond.text!)\(secNumberThird.text!)\(secNumberForth.text!)"
                yourGuessBullFour.text = "\(yourResults[0])"
                yourGuessCowFour.text = "\(yourResults[1])"

                myGuessFour.isHidden = false
                myGuessBullFour.isHidden = false
                myGuessCowFour.isHidden = false
                myGuessFour.text = "\(myGuessNum[0])\(myGuessNum[1])\(myGuessNum[2])\(myGuessNum[3])"
                myGuessBullFour.text = "\(myResults[0])"
                myGuessCowFour.text = "\(myResults[1])"
            }
            if numOfGuesses == 5 {
                yourGuessFive.isHidden = false
                yourGuessBullFive.isHidden = false
                yourGuessCowFive.isHidden = false
                yourGuessFive.text = "\(secNumberFirst.text!)\(secNumberSecond.text!)\(secNumberThird.text!)\(secNumberForth.text!)"
                yourGuessBullFive.text = "\(yourResults[0])"
                yourGuessCowFive.text = "\(yourResults[1])"

                myGuessFive.isHidden = false
                myGuessBullFive.isHidden = false
                myGuessCowFive.isHidden = false
                myGuessFive.text = "\(myGuessNum[0])\(myGuessNum[1])\(myGuessNum[2])\(myGuessNum[3])"
                myGuessBullFive.text = "\(myResults[0])"
                myGuessCowFive.text = "\(myResults[1])"
            }
            if numOfGuesses == 6 {
                yourGuessSix.isHidden = false
                yourGuessBullSix.isHidden = false
                yourGuessCowSix.isHidden = false
                yourGuessSix.text = "\(secNumberFirst.text!)\(secNumberSecond.text!)\(secNumberThird.text!)\(secNumberForth.text!)"
                yourGuessBullSix.text = "\(yourResults[0])"
                yourGuessCowSix.text = "\(yourResults[1])"

                myGuessSix.isHidden = false
                myGuessBullSix.isHidden = false
                myGuessCowSix.isHidden = false
                myGuessSix.text = "\(myGuessNum[0])\(myGuessNum[1])\(myGuessNum[2])\(myGuessNum[3])"
                myGuessBullSix.text = "\(myResults[0])"
                myGuessCowSix.text = "\(myResults[1])"
            }
            if numOfGuesses == 7 {
                yourGuessSeven.isHidden = false
                yourGuessBullSeven.isHidden = false
                yourGuessCowSeven.isHidden = false
                yourGuessSeven.text = "\(secNumberFirst.text!)\(secNumberSecond.text!)\(secNumberThird.text!)\(secNumberForth.text!)"
                yourGuessBullSeven.text = "\(yourResults[0])"
                yourGuessCowSeven.text = "\(yourResults[1])"

                myGuessSeven.isHidden = false
                myGuessBullSeven.isHidden = false
                myGuessCowSeven.isHidden = false
                myGuessSeven.text = "\(myGuessNum[0])\(myGuessNum[1])\(myGuessNum[2])\(myGuessNum[3])"
                myGuessBullSeven.text = "\(myResults[0])"
                myGuessCowSeven.text = "\(myResults[1])"
            }
            if myResults[0] == 4 {
                if yourResults[0] == 4{
                    gameResultLabel.text = "Its a TIE !!!"
                    gameResultLabel.textColor = UIColor.blue
                } else {
                    gameResultLabel.text = "You LOST !!!"
                    gameResultLabel.textColor = UIColor.red
                }
                gameResultLabel.isHidden = false
                disableAllDigits()
            } else if yourResults[0] == 4 {
                gameResultLabel.text = "You WON !!!"
                gameResultLabel.textColor = UIColor.green
                gameResultLabel.isHidden = false
            } else {
                clearNumberLabels()
                enableDigits()
            }
        }
    }
    
     func setNextLabel(next: String!) {
        secNumberFirst.backgroundColor = #colorLiteral(red: 0.8511976174, green: 0.8498337208, blue: 0.8736575961, alpha: 0.5)
        secNumberSecond.backgroundColor = #colorLiteral(red: 0.8511976174, green: 0.8498337208, blue: 0.8736575961, alpha: 0.5)
        secNumberThird.backgroundColor = #colorLiteral(red: 0.8511976174, green: 0.8498337208, blue: 0.8736575961, alpha: 0.5)
        secNumberForth.backgroundColor = #colorLiteral(red: 0.8511976174, green: 0.8498337208, blue: 0.8736575961, alpha: 0.5)
        


        if next == "1" {
            secNumberFirst.backgroundColor = #colorLiteral(red: 0.6740244555, green: 0.5426269163, blue: 0.1843401498, alpha: 0.5684694102)
            nextLabel = "1"
        } else if next == "2" {
            secNumberSecond.backgroundColor = #colorLiteral(red: 0.6740244555, green: 0.5426269163, blue: 0.1843401498, alpha: 0.5684694102)
            nextLabel = "2"
        } else if next == "3" {
            secNumberThird.backgroundColor = #colorLiteral(red: 0.6740244555, green: 0.5426269163, blue: 0.1843401498, alpha: 0.5684694102)
            nextLabel = "3"
        } else {
            secNumberForth.backgroundColor = #colorLiteral(red: 0.6740244555, green: 0.5426269163, blue: 0.1843401498, alpha: 0.5684694102)
            nextLabel = "4"
        }
    }
    func checkIfAllPopulated() -> Bool {
        if secNumberFirst.text != "" && secNumberSecond.text != "" && secNumberThird.text != "" && secNumberForth.text != "" {
            return true
        } else {
            return false
        }
    }
    func setValueInNextLabel(theValue: String) {
        if nextLabel == "1" {
            secNumberFirst.text  = theValue
            setNextLabel(next: "2")
        } else if nextLabel == "2" {
            secNumberSecond.text = theValue
            setNextLabel(next: "3")
        } else if nextLabel == "3" {
            secNumberThird.text = theValue
            setNextLabel(next: "4")
        } else {
            secNumberForth.text = theValue
            setNextLabel(next: "1")
        }
        if checkIfAllPopulated() {
            enterButton.isEnabled = true
        }
    }
    @IBAction func resetButtonPressed(_ sender: Any) {
        secNumberFirst.text  = ""
        secNumberSecond.text = ""
        secNumberThird.text  = ""
        secNumberForth.text  = ""
        setNextLabel(next: "1")
        enterButton.isEnabled = false

    }
    
    
    @IBAction func deleteButtonPressed(_ sender: Any) {
        if nextLabel == "1" {
            secNumberFirst.text  = ""
        } else if nextLabel == "2" {
            secNumberSecond.text = ""
        } else if nextLabel == "3" {
            secNumberThird.text = ""
        } else {
            secNumberForth.text = ""
        }
        enterButton.isEnabled = false
    }
    
    
    @IBAction func digitPressed(_ sender: UIButton) {
        setValueInNextLabel(theValue: sender.titleLabel!.text!)
        sender.isEnabled = false
    }
    
}

