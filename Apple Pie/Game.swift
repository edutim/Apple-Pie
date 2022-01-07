//
//  Game.swift
//  Apple Pie
//
//  Created by Timothy Hart on 1/7/22.
//

import Foundation

struct Game {
  var word: String
  var incorrectMovesRemaining: Int
  var guessedLetters: [Character]
  
  mutating func playerGuessed(letter: Character) {
    guessedLetters.append(letter)
    if !word.contains(letter) {
      incorrectMovesRemaining -= 1
    }
  }
}
