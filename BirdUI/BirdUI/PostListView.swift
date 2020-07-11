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
    VStack {
      HeaderView(title: "Home")
      HStack {
        Button("Create New Post") {
          print("btn pressed.")
        }
        .padding(.bottom)
        Spacer()
      }
      .padding(.horizontal)
      List(posts.posts) { post in
        PostView(post: post)
      }
      Spacer()
    }
  }
}

struct PostListView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      PostListView(posts: PostViewModel())
    }
  }
}
