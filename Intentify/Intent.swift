//
//  Intent.swift
//  Intentify
//
//  Created by Kelvin Lau on 2016-09-23.
//  Copyright © 2016 Kelvin. All rights reserved.
//

struct Intent {
  let isSelling: Bool
  let category: Category
}

// MARK: - CustomStringConvertible
extension Intent: CustomStringConvertible {
  var description: String {
    var description = ""
    if isSelling {
      description += "I am selling "
    } else {
      description += "I am buying "
    }
    
    description += "a \(category.rawValue)"
    return description
  }
}

// MARK: - Hashable, Equatable
extension Intent: Hashable, Equatable {
  var hashValue: Int {
    return category.hashValue + (isSelling ? 1000 : 2000)
  }
}

func ==(lhs: Intent, rhs: Intent) -> Bool {
  return lhs.hashValue == rhs.hashValue
}
