//
//  BaseCollectionCell.swift
//  TMDB
//
//  Created by Muneer KK on 19/12/19.
//  Copyright © 2019 Muneer KK. All rights reserved.
//

import UIKit

class BaseCollectionCell: UICollectionViewCell {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupViews() {}
  
}
