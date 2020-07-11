//
//  Extension+Date.swift
//  Birdui
//
//  Created by Johandre Delgado  on 11.07.2020.
//  Copyright © 2020 Razeware. All rights reserved.
//

import Foundation

extension Date {

  func toString() -> String {
      let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd MMM, HH:MM"
      return dateFormatter.string(from: self)
  }

}
