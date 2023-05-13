//
//  ProfileView.swift
//  BottomSheets
//
//  Created by Yunus Emre Berdibek on 14.05.2023.
//

import SwiftUI


struct ProfileView: View {
    var user: User
    
    var body: some View {
        VStack {
            Image(user.profileImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .shadow(radius: 10)
                .padding(.bottom, 20)
            
            Text(user.name)
                .font(.title)
                .foregroundColor(.blue)
                .padding(.bottom, 10)
            
            Text(user.email)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Spacer()
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User(name: "Nasus", email: "nasus@shurima.gmail.com", profileImage: "nasus"))
    }
}
