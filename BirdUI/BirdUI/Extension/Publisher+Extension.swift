//
//  Publisher+Extension.swift
//  Birdui
//
//  Created by Johandre Delgado  on 12.07.2020.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI
import Combine

extension Publishers {
    // 1.
    static var keyboardHeight: AnyPublisher<CGFloat, Never> {
        // 2.
        let willShow = NotificationCenter.default.publisher(for: UIApplication.keyboardWillShowNotification)
            .map { $0.keyboardHeight }

        let willHide = NotificationCenter.default.publisher(for: UIApplication.keyboardWillHideNotification)
            .map { _ in CGFloat(0) }

        // 3.
        return MergeMany(willShow, willHide)
            .eraseToAnyPublisher()
    }
}

