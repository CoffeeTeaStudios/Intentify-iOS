//
//  User+Tests.swift
//  Intentify
//
//  Created by Kelvin Lau on 2016-09-23.
//  Copyright © 2016 Kelvin. All rights reserved.
//

extension User {
  static var testUsers: [User] {
    let kelvin = User(firstName: "Kelvin", lastName: "Lau")
    let andy = User(firstName: "Andy", lastName: "Wong")
    
    kelvin.intentions = [
      Intent(isSelling: true, category: .phone)
    ]
    
    andy.intentions = [
      Intent(isSelling: true, category: .phone),
      Intent(isSelling: false, category: .phone)
    ]
    
    return [kelvin, andy]
  }
}
