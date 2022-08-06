//
//  User.swift
//  Twitter_SwiftUI (iOS)
//
//  Created by André Almeida on 2022-08-06.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
