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

/*
 In this example, we create a class called UserData, which contains a @Published name. In the ContentView structure, we create a property called userData with the type UserData, using @ObservedObject. We display the value of userData.name in a text field and output it on the screen.


 When the user changes the value in the text field, SwiftUI automatically updates the corresponding part of the interface, as the name property is published and observed using @Published. This means we don't need our own code to update the interface, and we allow SwiftUI to do it for us.


 Note: If you don't know, @Published is a property wrapper from the Combine framework that can be added to a class or structure property, which automatically sends notifications of any changes to the value of that property to anyone who has subscribed to it. In other words, it's a helper attribute for properties that can be tracked for changes.
 
 */

#Preview {
    ObservedObjectView()
}
