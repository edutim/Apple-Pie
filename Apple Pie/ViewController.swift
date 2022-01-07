//
//  ViewController.swift
//  Apple Pie
//
//  Created by Timothy Hart on 12/10/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var treeImageView: UIImageView!
  @IBOutlet weak var correctWordLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  
  @IBOutlet var letterButtons: [UIButton]!
  
  var listOfWords = ["buccaneer", "swift", "incandescent", "bug", "program"]
  
  var incorrectMovesAllowed = 7
  var totalWins = 0
  var totalLosses = 0
  
  var currentGame: Game!
  
  override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }

  func newRound() {
    let newWord = listOfWords.removeFirst()
    currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
    updateUI()
  }
  
  func updateUI() {
    var letters = [String]()
    for letter in currentGame.formattedWord {
      letters.append(String(letter))
    }
    let wordWithSpacing = letters.joined(separator: " ")
    correctWordLabel.text = wordWithSpacing
    scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
    treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
  }

  @IBAction func letterButtonPressed(_ sender: UIButton) {
    sender.isEnabled = false
    let letterString = sender.configuration!.title!
    let letter = Character(letterString.lowercased())
    currentGame.playerGuessed(letter: letter)
    updateUI()
  }
}

