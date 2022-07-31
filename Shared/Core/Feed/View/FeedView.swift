//
//  FeedView.swift
//  Twitter_SwiftUI (iOS)
//
//  Created by André Almeida on 2022-07-30.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 20, id: \.self) { _ in
                    TweetsRowView()
                }
            }//: LOOP
        }//: SCROLL
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
