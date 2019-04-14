//
//  MyTableViewCell.swift
//  FontList
//
//  Created by Madogiwa on 2019/04/14.
//  Copyright © 2019 myname. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
  @IBOutlet weak var myLabel: UILabel!
  @IBOutlet weak var mySubLabel: UILabel!

  override func awakeFromNib() {
      super.awakeFromNib()
      // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: animated)

      // Configure the view for the selected state
  }
}
