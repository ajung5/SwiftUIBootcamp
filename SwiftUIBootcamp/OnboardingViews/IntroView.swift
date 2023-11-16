//
//  IntroView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 16/11/23.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // MARK: Background
            RadialGradient(
                gradient: Gradient(colors: [
                    Color.purple,
                    Color.teal
                ]),
                center: .top,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            // #MARK: Logic
            // If User is signed in -> Profile View
            // else -> onboarding View
            
            if currentUserSignedIn {
                Text("Profile View")
            } else {
                Text("Onboarding View")
            }
        }
    }
}

#Preview {
    IntroView()
}
