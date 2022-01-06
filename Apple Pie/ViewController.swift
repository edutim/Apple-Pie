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
  
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


  @IBAction func letterButtonPressed(_ sender: UIButton) {
    sender.isEnabled = false
  }
}

