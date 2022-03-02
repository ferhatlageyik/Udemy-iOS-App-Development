//
//  Game.swift
//  Apple Pie
//
//  Created by Ferhat Geyik on 27.01.2022.
//

import Foundation


struct Game{
    var word: String
    var incorrectMovesRemaining: Int
    var guesseddLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guesseddLetters.contains(letter){
                guessedWord += "\(letter)"
            }else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guesseddLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
