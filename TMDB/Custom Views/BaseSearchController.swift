//
//  BaseSearchController.swift
//  TMDB
//
//  Created by Muneer KK on 19/12/19.
//  Copyright © 2019 Muneer KK. All rights reserved.
//

import UIKit

class CustomSearchBar: UISearchBar {
  
  override func setShowsCancelButton(_ showsCancelButton: Bool, animated: Bool) {
    super.setShowsCancelButton(false, animated: animated)
  }
}

class CustomSearchController: UISearchController, UISearchBarDelegate {
  lazy var _searchBar: CustomSearchBar = {
    [unowned self] in
    let bar = CustomSearchBar(frame: CGRect.zero)
    bar.delegate = self
    return bar
    }()
  
  override var searchBar: UISearchBar {
    get {
      return _searchBar
    }
  }
}
