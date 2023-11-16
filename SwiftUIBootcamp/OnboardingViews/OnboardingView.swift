//
//  OnboardingView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 16/11/23.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states:
    /*
     0 - welcome screen
     1 - add name
     2 - add age
     3 - add gender
     */
    @State var onboardingState: Int = 0
    
    var body: some View {
        ZStack {
            // #MARK: content
            
            
            // #MARK: buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
    }
    
    private var bottomButton: some View {
        Text("Sign In")
            .font(.headline)
            .ignoresSafeArea(edges: .top)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 10)
            )
    }
}

#Preview {
    OnboardingView()
        .background(Color.purple)
}
