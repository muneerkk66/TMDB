//
//  ViewProtocol.swift
//  TMDB
//
//  Created by Muneer KK on 19/12/19.
//  Copyright © 2019 Muneer KK. All rights reserved.
//
import UIKit

protocol LayoutConstraintable {
  /**
   Activates each constraint in the specified array
   
   - parameter constraint: NSLayoutConstraint
   */
  func activate(_ constraint: [NSLayoutConstraint])
}

extension LayoutConstraintable {
  func activate(_ constraint: [NSLayoutConstraint]) {
    NSLayoutConstraint.activate(constraint)
  }
}


extension UIViewController: LayoutConstraintable {}
extension UIView: LayoutConstraintable {}


// MARK: - NavigationItemControllable
protocol NavigationItemControllable {
  /// Setup default back bar button item
  func setupBackBarButtonItem(_ completion: (UIImageView) -> Void)
}

extension NavigationItemControllable {
  /// Setup for the UIBarButtonItem. Default image is `back` icon.
  func setupBackBarButtonItem(_ completion: (UIImageView) -> Void) {
    let backImageIcon = UIImage(named: "back")?.withRenderingMode(.alwaysTemplate)
    let imgView = UIImageView(image: backImageIcon)
    imgView.tintColor = Colors.mainGrayColor
    completion(imgView)
  }
}

extension UIViewController: NavigationItemControllable {}
