//
//  FileStorage.swift
//  TMDB
//
//  Created by Muneer KK on 19/12/19.
//  Copyright © 2019 Muneer KK. All rights reserved.
//

import Foundation

struct FileStorage {
  let baseURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
  
  subscript(key: String) -> Data? {
    get {
      let url = baseURL.appendingPathComponent(key)
      return try? Data(contentsOf: url)
    }
    set {
      let url = baseURL.appendingPathComponent(key)
      _ = try? newValue?.write(to: url)
    }
  }
  
  func remove(at key: String) {
    _ = try? FileManager.default.removeItem(at: baseURL.appendingPathComponent(key))
  }
}
