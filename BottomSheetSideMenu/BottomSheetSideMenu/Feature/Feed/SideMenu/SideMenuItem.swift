//
//  SideMenuItem.swift
//  BottomSheetSideMenu
//
//  Created by Yunus Emre Berdibek on 14.05.2023.
//

import SwiftUI

struct SideMenuItem: View {
    var text: String
    var image: String

    var action: () -> Void

    var body: some View {
        HStack {
            Button {
                action()
            } label: {
                Image(systemName: image)
                    .foregroundColor(.blue)

                Text(text) }
            Spacer()
        }
            .padding(.all, 10)
            .padding(.leading, 15)
            .tint(.black)
    }
}

struct SideMenuItem_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuItem(text: "Gallery", image: "photo", action: { })
    }
}
