//
//  Notification+Extension.swift
//  Birdui
//
//  Created by Johandre Delgado  on 12.07.2020.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

extension Notification {
    var keyboardHeight: CGFloat {
        return (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height ?? 0
    }
}
