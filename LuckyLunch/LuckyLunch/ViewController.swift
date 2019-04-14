//
//  ViewController.swift
//  LuckyLunch
//
//  Created by Madogiwa on 2019/04/13.
//  Copyright © 2019 myname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var myLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func tapButton(_ sender: Any) {
    let items:[String] = ["弁当", "カレー", "パン", "パスタ", "うどん"]
    let rand = Int(arc4random()) % items.count
    myLabel.text = items[rand]
  }
}
