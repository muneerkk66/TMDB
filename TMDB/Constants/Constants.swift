//
//  Constants.swift
//  TMDB
//
//  Created by Muneer KK on 19/12/19.
//  Copyright © 2019 Muneer KK. All rights reserved.
//
import UIKit

enum Colors {
  static let mainGrayColor = UIColor(red: 160.0/255.0, green: 160.0/255.0, blue: 160.0/255.0, alpha: 1.0)
  static let ghostPale = UIColor(red: 246.0/255.0, green: 248.0/255.0, blue: 253.0/255.0, alpha: 1.0)
  static let lightGrey = UIColor(red: 236.0/255.0, green: 240.0/255.0, blue: 244.0/255.0, alpha: 1.0)
  static let navigationTextColor = UIColor(red: 79.0/255.0, green: 87.0/255.0, blue: 99.0/255.0, alpha: 1.0)
  static let darkSlate = UIColor(red: 33.0/255.0, green: 38.0/255.0, blue: 44.0/255.0, alpha: 1.0)
}

enum Constants {
  static let description = "Description:"
  static let releaseDate = "Release Date:"
  static let genres = "Genres:"
  static let budget = "Budget:"
  static let revenue = "Revenue:"
  // Misc
  enum Misc {
    static let nothingFoundError = "Search..."
    static let networkError = "Unable to establish a connection to the server. Try again"
    static let genericError = "Error!"
  }
  
  enum Cache {
    static let movies = "MoviesCache"
  }
    
}
