//
//  ViewController.swift
//  Apple Pie
//
//  Created by Ferhat Geyik on 26.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctwordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["apple", "bird", "dog", "shine", "bug", "coding"]
    let incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    var currentGame: Game!
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.titleLabel?.text
        let letter = Character((letterString?.lowercased())!)
        currentGame.playerGuessed(letter: letter)
        updateGameState()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    func newRound(){
        if !listOfWords.isEmpty {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guesseddLetters: [])
            enanbleLetterButtons(true)
        updateUI()
        } else {
            enanbleLetterButtons(false)
        }
    }
    
    func enanbleLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
    
    func updateUI(){
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        
        let wordWithSpacing = letters.joined(separator: " ")
        
        
        correctwordLabel.text = currentGame.formattedWord
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func updateGameState(){
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUI()
        }
    }

}

