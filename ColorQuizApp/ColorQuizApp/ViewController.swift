//
//  ViewController.swift
//  ColorQuizApp
//
//  Created by Madogiwa on 2019/04/14.
//  Copyright © 2019 myname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var colorLabel: UILabel!

  var colorTuple: (R:Int, G:Int, B:Int) = (0, 0, 0)

  @IBAction func returnToTop(segue: UIStoryboardSegue) {
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func viewWillAppear(_ animated: Bool) {
    colorTuple = (R: randRGB(), G: randRGB(), B: randRGB())
    colorLabel.text = "R=\(colorTuple.R), G=\(colorTuple.G), B=\(colorTuple.B)"
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let nextVc = segue.destination as! ColorViewController
    nextVc.colorTuple = colorTuple
  }

  func randRGB() -> Int {
    return Int(arc4random() % 256)
  }
}
