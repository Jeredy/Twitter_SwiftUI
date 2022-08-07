//
//  Tweet.swift
//  Twitter_SwiftUI (iOS)
//
//  Created by André Almeida on 2022-08-07.
//

import FirebaseFirestoreSwift
import Firebase

struct Tweet: Identifiable, Decodable {
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    let likes: Int
    
    var user: User?
    var didLike: Bool? = false
}
