//
//  PostView.swift
//  Birdui
//
//  Created by Audrey Tam on 4/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostView: View {
  let post: MediaPost
  let viewModel: PostViewModel
  
  var body: some View {
    // TODO: This should look exactly like Birdie's table view cell.
    // The post text is left-aligned below the mascot image.
    // The image, if any, is horizontally centered in the view.
    VStack {
      VStack(alignment: .leading) {
        HStack {
          Image("mascot_swift-badge")
            .resizable()
            .scaledToFit()
            .frame(height: 50)
          VStack(alignment: .leading) {
            Text(post.userName)
            Text(post.timestamp.toString())
          }
          Spacer()
        }

        Text(self.getMessage())
      }
      if self.post.uiImage != nil {
        HStack {
          Spacer()
          Image(uiImage: post.uiImage!)
            .resizable()
            .scaledToFit()
            .frame(height: 150,alignment: .center)
          Spacer()
        }
      }
      HStack {
        Spacer()
        Button(action: {
          print("JD: - starred")
          self.viewModel.set(like: !self.post.liked, to: self.post)
        }) {
          Image(systemName: "heart.fill")
            .foregroundColor(self.post.liked ? .red : Color(UIColor.systemGray))
            .scaleEffect(self.post.liked ? 1.3 : 1.0)
            .animation(.linear)
        }
      }
      .padding()
    }
  }

  private func getMessage() -> String {
    if let message = post.textBody {
      return message
    }
    return ""
  }

  
}

struct PostView_Previews: PreviewProvider {
  static var previews: some View {
    PostView(post: MediaPost(textBody: "Went to the Aquarium today :]",
                             userName: "Audrey", timestamp: Date(timeIntervalSinceNow: -9876),
                             uiImage: UIImage(named: "octopus")), viewModel: PostViewModel())
  }
}
