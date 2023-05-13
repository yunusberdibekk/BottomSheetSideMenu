//
//  HomeView.swift
//  BottomSheets
//
//  Created by Yunus Emre Berdibek on 14.05.2023.
//

import SwiftUI

struct HomeView: View {
    @State var selectionIndex = 0
    var body: some View {
        TabView(selection: $selectionIndex) {
            FeedView()
                .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
                .tag(0)

            ProfileView(user: User(name: "Nasus", email: "nasus@shurima.com", profileImage: "nasus"))
                .tabItem {
                Image(systemName: "person")
                Text("Profile")
                    .tag(1)

            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
