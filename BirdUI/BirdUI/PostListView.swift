//
//  PostListView.swift
//  Birdui
//
//  Created by Audrey Tam on 4/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostListView: View {
  @ObservedObject var posts: PostViewModel = PostViewModel()

  var body: some View {
    // TODO: This should look exactly like the Birdie table view,
    // but with only one button.
    VStack(alignment:.leading, spacing: 10) {
      HStack {
        Image("mascot_swift-badge")
          .resizable()
          .scaledToFit()
          .frame(height: 50)
        Spacer()
        Text("Home")
          .font(.system(size: 44))
          .offset(x: -25)
        Spacer()

      }
      HStack {
        Button("Create New Post") {
          print("btn pressed.")
        }
        Spacer()
      }
      List(posts.posts) { post in
        Text(post.textBody!)
      }
      Spacer()
    }
    .padding()
  }
}

struct PostListView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      PostListView(posts: PostViewModel())
    }
  }
}
