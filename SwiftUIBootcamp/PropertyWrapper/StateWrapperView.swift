//
//  StateWrapperView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 19/10/23.
//


// @State allows you to create properties that can be changed and, if necessary, update the interface based on these changes.
// For example, if you want to create a button that changes its color when pressed, you can create a @State variable to store the color and add it to the button
import SwiftUI

struct StateWrapperView: View {
    
    @State var backgroundColor: Color = .teal
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Button(action: {
                    backgroundColor = Color.erieBlack
                }, label: {
                    Text("Press")
                        .tint(.erieBlack)
                        //.frame(width: 100, height: 100)
                        .padding()
                        .background(Color.jasmine)
                        .clipShape(Capsule())
                })
            }

        }
    }
}

#Preview {
    StateWrapperView()
}
