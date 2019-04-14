//
//  ViewController.swift
//  FontList
//
//  Created by Madogiwa on 2019/04/14.
//  Copyright © 2019 myname. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  var fontNames:[String] = []

  override func viewDidLoad() {
    super.viewDidLoad()
    for fontFamilyName in UIFont.familyNames {
      for fontName in UIFont.fontNames(forFamilyName: fontFamilyName as String) {
        fontNames.append(fontName)
      }
    }
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
    return fontNames.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "myCell")
    let fontName = fontNames[indexPath.row]
    cell.textLabel?.font = UIFont(name: fontName, size: 18)
    cell.textLabel?.text = "ABCDE abcde 012345 あいうえお"
    cell.detailTextLabel?.textColor = UIColor.brown
    cell.detailTextLabel?.text = fontName
    return cell
//    use CustomCell
//    let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
//    cell.myLabel.text = "こんにちは"
//    return cell
  }
}
