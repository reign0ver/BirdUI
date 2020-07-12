//
//  PostListView.swift
//  Birdui
//
//  Created by Audrey Tam on 4/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostListView: View {
  @ObservedObject var viewModel: PostViewModel = PostViewModel()
  
  @State private var isPresented = false

  var body: some View {
    // TODO: This should look exactly like the Birdie table view
    // but with only one button.
    VStack {
      HeaderView(title: "Home")
      HStack {
        Button("Create New Post") {
          print("btn pressed.")
          self.isPresented = true
        }
        .padding(.bottom)
        Spacer()
      }
      .padding(.horizontal)
      List(viewModel.posts) { post in
        PostView(post: post, viewModel: self.viewModel)
      }
      .buttonStyle(BorderlessButtonStyle())
      Spacer()
    }.sheet(isPresented: $isPresented) {
      NewPostView(postHandler: self.viewModel)
    }
  }
}

struct PostListView_Previews: PreviewProvider {
  static var previews: some View {
    PostListView(viewModel: PostViewModel())
  }
}
