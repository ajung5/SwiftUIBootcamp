//
//  UserListView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ForEach(users.shuffled()) { item in
            HStack(spacing: 15) {
                Circle()
                    .frame(width: 35, height: 35)
                
                VStack(alignment: .leading) {
                    Text("\(item.firstName) \(item.middleName) \(item.lastName)")
                        .font(.headline)
                    
                    Text("@\(item.userName)")
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                }
                
                Spacer()
                
                if item.isVerified {
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundStyle(.blue)
                }
                
                VStack {
                    Text("\(item.followerCount)")
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
}

#Preview {
    UserListView()
}
