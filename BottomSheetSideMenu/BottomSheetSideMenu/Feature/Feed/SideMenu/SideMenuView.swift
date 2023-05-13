//
//  SideMenuView.swift
//  BottomSheetSideMenu
//
//  Created by Yunus Emre Berdibek on 14.05.2023.
//

import SwiftUI

struct SideMenuView: View {
    @State var toNotificationsView = false
    @State var toBookmarksView = false
    @State var toLogOutView = false
    @State var toSettingsView = false

    var body: some View {
        NavigationView {
            VStack {
                SideMenuItem(text: "Notifications", image: "bell") {
                    toNotificationsView.toggle()
                }
                SideMenuItem(text: "Settings and Privacy", image: "gear") {
                    toSettingsView.toggle()
                }
                SideMenuItem(text: "Bookmarks", image: "bookmark") {
                    toBookmarksView.toggle()
                }
                SideMenuItem(text: "Log Out", image: "arrow.right") {
                    toLogOutView.toggle()
                }
            }
                .fullScreenCover(isPresented: $toNotificationsView, content: NotificationsView.init)
                .fullScreenCover(isPresented: $toSettingsView, content: SettingsView.init)
                .fullScreenCover(isPresented: $toBookmarksView, content: BookmarksView.init)
                .fullScreenCover(isPresented: $toLogOutView, content: LogOutView.init)
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

struct NotificationsView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {
                Text("Notifications View")
                Spacer()
            } .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("Notifications Full View")
                .navigationBarItems(trailing: Button("Close") {
                    presentationMode.wrappedValue.dismiss()
                })
        }
    }
}

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {
                Text("Settings and Privacy View")
                Spacer()
            } .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("Settings and Privacy Full View")
                .navigationBarItems(trailing: Button("Close") {
                    presentationMode.wrappedValue.dismiss()
                })
        }
    }
}
struct BookmarksView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {
                Text("Bookmarks View")
                Spacer()
            } .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("Bookmarks Full View")
                .navigationBarItems(trailing: Button("Close") {
                    presentationMode.wrappedValue.dismiss()
                })
        }
    }
}
struct LogOutView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {
                Text("LogOut View")
                Spacer()
            } .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("LogOut Full View")
                .navigationBarItems(trailing: Button("Close") {
                    presentationMode.wrappedValue.dismiss()
                })
        }
    }
}

