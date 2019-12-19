//
//  AppCoordinator.swift
//  TMDB
//
//  Created by Muneer KK on 19/12/19.
//  Copyright © 2019 Muneer KK. All rights reserved.
//

import UIKit


class AppCoordinator: Coordinator {
  
  let window: UIWindow
  let rootViewController: UINavigationController
  let movieListCoordinator: MovieListCoordinator
  
  init(window: UIWindow) {
    self.window = window
    rootViewController = UINavigationController()
    movieListCoordinator = MovieListCoordinator(navigationController: rootViewController)
  }
  
  func start() {
    window.rootViewController = rootViewController
    movieListCoordinator.start()
    window.makeKeyAndVisible()
  }
}
