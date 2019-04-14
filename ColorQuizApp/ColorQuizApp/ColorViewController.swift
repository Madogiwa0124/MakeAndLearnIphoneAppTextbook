//
//  ColorViewController.swift
//  ColorQuizApp
//
//  Created by Madogiwa on 2019/04/14.
//  Copyright © 2019 myname. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

  var colorTuple: (R:Int, G:Int, B:Int) = (0, 0, 0)

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    let bgColor: UIColor = UIColor( red: cgFloatColor(color: colorTuple.R),
                                    green: cgFloatColor(color: colorTuple.G),
                                    blue: cgFloatColor(color: colorTuple.B),
                                    alpha: 1.0 )
    view.backgroundColor = bgColor
  }

  func cgFloatColor(color: Int) -> CGFloat {
    return CGFloat(color) / 256.0
  }
}
