//
//  User.swift
//  Intentify
//
//  Created by Kelvin Lau on 2016-09-23.
//  Copyright © 2016 Kelvin. All rights reserved.
//

final class User {
  var firstName: String
  var lastName: String
  
  var intentions: Set<Intent> = []
  
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

// MARK: - IntentDisplayable
extension User: IntentDisplayable {
  var name: String {
    return firstName + " " + lastName
  }
}
