//
//  ExploreViewController.swift
//  Intentify
//
//  Created by Kelvin Lau on 2016-09-23.
//  Copyright © 2016 Kelvin. All rights reserved.
//

import UIKit

protocol IntentDisplayable {
  var name: String { get }
  var intentions: Set<Intent> { get }
}

final class ExploreViewController: UIViewController {
  @IBOutlet private var tableView: UITableView! { didSet {
    tableView.estimatedRowHeight = 88
    tableView.rowHeight = UITableViewAutomaticDimension
  }}
  
  fileprivate let locationManager = LocationManager.sharedInstance
  
  fileprivate let users: [User]! = User.testUsers
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}

// MARK: - UITableViewDataSource
extension ExploreViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: ExploreCell.reuseIdentifier) as? ExploreCell else { fatalError() }
    cell.user = users[indexPath.row] as IntentDisplayable
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return users?.count ?? 0
  }
}
// MARK: - @IBActions
private extension ExploreViewController {
  @IBAction func buttonTapped() {
    locationManager.getCurrentLocation()
  }
}
