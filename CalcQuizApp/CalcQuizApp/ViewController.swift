//
//  ViewController.swift
//  CalcQuizApp
//
//  Created by Madogiwa on 2019/04/14.
//  Copyright © 2019 myname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var myLabel: UILabel!
  @IBOutlet weak var myTextField: UITextField!

  var a:Int = 0, b:Int = 0, correct:Int = 0

  func question(){
    a = Int(arc4random()) % 100
    b = Int(arc4random()) % 100
    correct = a + b
    myLabel.text = "\(a) + \(b) = ?"
    myTextField.text = ""
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    question()
  }

  @IBAction func tapButton(_ sender: Any) {
    guard let answer = Int(myTextField.text!) else { return }

    let check:Bool = answer == correct
    let alert = UIAlertController(
      title: "足し算Quiz",
      message: correctMessage(check: check),
      preferredStyle: .alert
    )
    let defaultAction = UIAlertAction(
      title: "OK",
      style: .default,
      handler: { action in if check { self.question() } }
    )
    let skipQuestionAction = UIAlertAction(
      title: "SKIP",
      style: .default,
      handler: { action in self.question() }
    )
    alert.addAction(defaultAction)
    if !check { alert.addAction(skipQuestionAction) }
    present(alert, animated: true, completion: nil)
  }

  func correctMessage(check:Bool) -> String {
    return check ? "正解" : "間違い"
  }
}

