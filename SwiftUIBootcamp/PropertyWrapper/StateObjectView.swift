//
//  StateObjectView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 20/10/23.
//

// @StateObject is a property wrapper used to initialize a class object and store it in the view state in SwiftUI.
// This means that the object is stored as long as the view exists and is destroyed along with it.
// Typically, using @StateObject is more practical for class objects that are needed for multiple views, not just one

import SwiftUI


class PersonData: ObservableObject {
    @Published var name = "John"
    @Published var age = 30
}

struct StateObjectView: View {
    
    @StateObject var personData = PersonData()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Name: \(personData.name)")
                Text("age: \(personData.age)")
                
                NavigationLink("Edit Profile") {
                    ProfileView(personData: personData)
                }
            }
        }
    }
}

struct ProfileView: View {
    @ObservedObject var personData: PersonData
    
    var body: some View {
        Form {
            TextField("Name", text: $personData.name)
            Stepper("Age: \(personData.age)", value: $personData.age)
        }
        .navigationTitle("Profile")
    }
}

#Preview {
    StateObjectView()
}


// In this example,UserData is an object of a class that contains several properties that can be used in multiple views. The class is marked as ObservableObject so it can be used with @StateObject and @ObservedObject.


// In ContentView, we create a new UserData object using @StateObject to save state between transitions between different views. In this case, ContentView displays user data, visualizes it, and contains a link to another view (ProfileView) that can be used to edit the user data.


// In ProfileView, we get access to the same UserData object using @ObservedObject to modify user data. When the user changes data, it is automatically updated in ContentView because the same UserData object is used.


// Note: Use @ObservedObject if you need to observe changes in a class object from one view and @StateObject if you need to save the state of a class object that affects the display of multiple views.


// If you use @ObservedObject instead of @StateObject for an object needed in multiple views, each view will have its own instance of the object, which can lead to problems with data synchronization between views. Therefore, in this case, it is better to use @StateObject.
