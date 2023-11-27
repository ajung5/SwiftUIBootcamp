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
    
    let transisi: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    
    // for alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // for appstorage
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("name") var currentUsername: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // #MARK: content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transisi)
                case 1:
                    addNameSection
                        .transition(transisi)
                case 2:
                    addAgeSection
                        .transition(transisi)
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
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
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
        Text(onboardingState == 0 ? "SIGN UP" : onboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .ignoresSafeArea(edges: .top)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 10)
            )
            .onTapGesture {
                handleNextButtonPressed()
            }
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


// MARK: Functions

extension OnboardingView {
    
    func handleNextButtonPressed() {
    
        // Check Input
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at 3 characters long! 😩")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select gender before move to next step!")
                return
            }
        default:
            break
        }
        
        // GO to Next Section
        if  onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUsername = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
