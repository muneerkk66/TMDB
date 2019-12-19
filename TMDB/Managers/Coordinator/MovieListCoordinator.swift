//
//  MovieListCoordinator.swift
//  TMDB
//
//  Created by Muneer KK on 19/12/19.
//  Copyright © 2019 Muneer KK. All rights reserved.
//

import UIKit

class MovieListCoordinator: Coordinator {
  private let navigationController: UINavigationController
  private weak var movieDetailsCoordinator: MovieDetailsCoordinator?
  private var movieListViewController: MovieListViewController?
  private let movieService: MovieService = MovieService()

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let movieListVC = MovieListViewController()
    let presenter = MovieListPresenter(movieService: movieService)
    movieListVC.presenter = presenter
    movieListVC.delegate = self
    presenter.view = movieListVC
    
    navigationController.pushViewController(movieListVC, animated: true)
    self.movieListViewController = movieListVC
  }
}


extension MovieListCoordinator: MovieListViewControllerDelegate {
  func didSelect(movie selectedMovie: Movie) {
    let coordinator = MovieDetailsCoordinator(navigationController: navigationController, movie: selectedMovie, movieService: movieService)
    coordinator.start()
    
    self.movieDetailsCoordinator = coordinator
  }
}
