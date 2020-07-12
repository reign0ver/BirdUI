//
//  HeaderView.swift
//  Birdui
//
//  Created by Johandre Delgado  on 11.07.2020.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
  var title = "BirdUI"
    var body: some View {
      HStack {
        Image("mascot_swift-badge")
          .resizable()
          .scaledToFit()
          .frame(height: 50)
        Spacer()
        Text(self.title)
          .font(.system(size: 36))
          .offset(x: -25)
        Spacer()
      }
      .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
