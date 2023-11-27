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
    
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    var body: some View {
        ZStack {
            // #MARK: content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundStyle(.green)
                }
            }
            
            // #MARK: buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
    }
}

#Preview {
    OnboardingView()
        .background(Color.purple)
}

// MARK: Components
extension OnboardingView {
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
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(.white)
                    , alignment: .bottom
                )
            Text("This is #1 app for finding yourr match online! In this tutorial we are practicing using AppStoragee and other SwiftUI techniques")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            TextField("Your Name Here....", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            

            Picker("", selection: $gender) {
                Text("Male").tag("male")
                Text("Female").tag("female")
                Text("Non-Binary").tag("nonBinary")
            }
            .pickerStyle(SegmentedPickerStyle())
            .font(.headline)
            .foregroundStyle(.purple)
            .frame(minHeight: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 10)
            )
            

            Spacer()
            Spacer()
        }
        .padding(30)
    }
}



