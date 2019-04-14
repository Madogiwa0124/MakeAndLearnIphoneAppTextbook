//
//  ViewController.swift
//  WebTest
//
//  Created by Madogiwa on 2019/04/13.
//  Copyright © 2019 myname. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
  @IBOutlet weak var myWebView: WKWebView!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let appleSite = URL(string: "https://apple.com/jp/")!
    myWebView.load(URLRequest(url: appleSite))
  }
}
