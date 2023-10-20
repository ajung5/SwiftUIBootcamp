//
//  ObservedObjectView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 20/10/23.
//


// @ObservedObject is used to mark properties that are observed and can change depending on external data changes.
// This property wrapper subscribes to changes in the object that conforms to the ObservableObject protocol and automatically updates the relevant parts of the interface if the data has changed.
// Here's a brief example of using @ObservedObject
import SwiftUI

class UserData: ObservableObject {
    @Published var nama = "John"
}


struct ObservedObjectView: View {
    
    @ObservedObject var userData = UserData()
    
    var body: some View {
        VStack {
            Text("Hello, \(userData.nama)")
            TextField("Enter your name", text: $userData.nama)
        }
    }
}

#Preview {
    ObservedObjectView()
}
