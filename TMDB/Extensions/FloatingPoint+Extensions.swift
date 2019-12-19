//
//  FloatingPoint+Extensions.swift
//  TMDB
//
//  Created by Muneer KK on 19/12/19.
//  Copyright © 2019 Muneer KK. All rights reserved.
//

import Foundation

extension Double {
  /// By default rounds by 2 digit after floating point
  func round(_ places: Int = 2) -> Double {
    let divisor = pow(10.0, Double(places))
    return Darwin.round(self * divisor) / divisor
  }
}
