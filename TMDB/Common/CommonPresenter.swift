//
//  CommonPresenter.swift
//  TMDB
//
//  Created by Muneer KK on 19/12/19.
//  Copyright © 2019 Muneer KK. All rights reserved.
//

import Foundation

public class CommonPresenter {
  weak var indicatableView: IndicatableView?
  
  func handleError(_ error: NSError?) -> Bool {
    if let error = error {
      indicatableView?.showError(with: error.localizedDescription)
      return true
    } else {
      return false
    }
  }
  
  func handleErrorMessage(_ error: NSError?) -> Bool {
    if let error = error {
      indicatableView?.show(error.localizedDescription)
      return true
    } else {
      return false
    }
  }
}
