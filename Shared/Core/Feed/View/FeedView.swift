//
//  FeedView.swift
//  Twitter_SwiftUI (iOS)
//
//  Created by André Almeida on 2022-07-30.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetVeiw = false
    @ObservedObject var viewModel = FeedViewModel()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.tweets) { tweet in
                        TweetsRowView(tweet: tweet)
                    }
                }//: LOOP
            }//: SCROLL
            
            Button {
                showNewTweetVeiw.toggle()
            } label: {
                Image(systemName: "highlighter")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetVeiw) {
                NewTweetView()
            }
            
        }//: ZSTACK
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
