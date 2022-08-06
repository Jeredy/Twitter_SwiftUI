//
//  SideMenuView.swift
//  Twitter_SwiftUI (iOS)
//
//  Created by André Almeida on 2022-07-30.
//

import SwiftUI
import Kingfisher

struct SideMenuView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        if let user = authViewModel.currentUser {
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 48, height: 48)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("\(user.fullname)")
                            .font(.headline)
                        
                        Text("@\(user.username)")
                            .font(.caption)
                    }
                    
                    UserStatsView()
                        .padding(.vertical)
                }
                .padding(.leading)
                
                ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                    if viewModel == .profile {
                        NavigationLink {
                            ProfileView(user: user).navigationBarBackButtonHidden(true)
                        } label: {
                            SideMenuOptionRowView(viewModel: viewModel)
                        }
                    } else if viewModel == .logout {
                        Button {
                            authViewModel.signOut()
                        } label: {
                            SideMenuOptionRowView(viewModel: viewModel)
                        }
                    } else {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                }
                .padding(.vertical, 4)
                
                Spacer()
            }
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
