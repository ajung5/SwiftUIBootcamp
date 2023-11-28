//
//  HalamanProfil.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 27/11/23.
//

import SwiftUI

struct HalamanProfil: View {
    // for appstorage
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("name") var currentUsername: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text(currentUsername ?? "Your Name Here")
            Text("Your Age is \(currentUserAge ?? 0) Years Old")
            Text("Your Gender is \(currentUserGender ?? "Unknown")")
            
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )
                .onTapGesture {
                    signOut()
                }
        }
        .foregroundStyle(.purple)
        .font(.title)
        .padding()
        .padding(.vertical, 40)
        .shadow(radius: 10)
        .background(Color.white)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
    }
    
    func signOut() {
        currentUsername = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    HalamanProfil()
}
