//
//  UserProfileView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import SwiftUI

struct UserProfileView: View {
    
    var user: PersonModel
    
    var body: some View {
        Text(user.firstName)
    }
}

#Preview {
    UserProfileView(user: users[0])
}
