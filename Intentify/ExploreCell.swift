//
//  ExploreCell.swift
//  Intentify
//
//  Created by Kelvin Lau on 2016-09-23.
//  Copyright © 2016 Kelvin. All rights reserved.
//

import UIKit

final class ExploreCell: UITableViewCell {
  static let reuseIdentifier = "\(ExploreCell.self)"
  
  @IBOutlet private var nameLabel: UILabel!
  @IBOutlet private var intentTextView: UITextView!
  
  var user: IntentDisplayable! { didSet {
    nameLabel.text = user.name
    intentTextView.text = "* " + user.intentions.map { $0.description }.joined(separator: "\n* ")
  }}
}
