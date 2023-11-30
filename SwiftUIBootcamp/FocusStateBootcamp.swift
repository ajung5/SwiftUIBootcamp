//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 30/11/23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    // @FocusState private var usernameInFocus: Bool
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add Your Name here", text: $username)
                .foregroundStyle(.black)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tint(.black)
            
            SecureField("Add Your Passworrd here", text: $password)
                .foregroundStyle(.black)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .tint(.black)
            
            Button("SIGN UP") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP Success")
                } else if usernameIsValid {
                    fieldInFocus = .password
                } else {
                    fieldInFocus = .username
                }
            }
        }
        .padding(40)
//        .onAppear{
//            DispatchConcurrentQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.fieldInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
 
