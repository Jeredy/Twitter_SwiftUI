//
//  UploadTweetViewModel.swift
//  Twitter_SwiftUI (iOS)
//
//  Created by André Almeida on 2022-08-07.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                self.didUploadTweet = true
            } else {
                // show error message to user..
            }
        }
    }
}
