//
//  UserListView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import SwiftUI

struct UserListView: View {
    
    let user: PersonModel
    
    var body: some View {
        HStack(spacing: 15) {
            Circle()
                .frame(width: 35, height: 35)
            
            VStack(alignment: .leading) {
                Text("\(user.firstName) \(user.middleName) \(user.lastName)")
                    .font(.headline)
                
                Text("@\(user.userName)")
                    .foregroundStyle(.gray)
                    .font(.subheadline)
            }
            
            Spacer()
            
            if user.isVerified {
                Image(systemName: "checkmark.seal.fill")
                    .foregroundStyle(.blue)
            }
            
            VStack {
                Text("\(user.followerCount)")
                    .font(.headline)
                
                Text("Followers")
                    .foregroundStyle(.gray)
                    .font(.caption)
            }
            
            //Text("\(item.id)")
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    UserListView(user: users[0])
}
