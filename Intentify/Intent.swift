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

extension Intent: Hashable, Equatable {
  var hashValue: Int {
    return category.hashValue + (isSelling ? 1000 : 2000)
  }
}

func ==(lhs: Intent, rhs: Intent) -> Bool {
  return lhs.hashValue == rhs.hashValue
}
