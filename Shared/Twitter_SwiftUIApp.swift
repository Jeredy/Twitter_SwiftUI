//
//  Twitter_SwiftUIApp.swift
//  Shared
//
//  Created by André Almeida on 2022-07-28.
//

import SwiftUI
import Firebase

@main
struct Twitter_SwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environmentObject(viewModel)
            }
            .environmentObject(viewModel)
        }
    }
}
