//
//  DetailViewController.swift
//  PhotoCatalog
//
//  Created by Madogiwa on 2019/04/14.
//  Copyright © 2019 myname. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  @IBOutlet weak var photoImageView: UIImageView!

  func configureView() {
    // Update the user interface for the detail item.
    if let detail = detailItem {
      if let imageView = photoImageView {
        imageView.image = UIImage(named: detail)
      }
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    configureView()
    self.title = detailItem
  }

  var detailItem: String? {
    didSet {
        // Update the view.
        configureView()
    }
  }
}

