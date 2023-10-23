//
//  EnvironmentObjectView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 21/10/23.
//

// @EnvironmentObject is a property wrapper for passing data objects through the SwiftUI view hierarchy. It allows access to the data object from any view in the SwiftUI hierarchy that belongs to the Environment container (e.g., Scene, View, App, etc.). For example, imagine we have a task list management app. We can have a root ContentView that contains a list of tasks and the ability to create new tasks. For this, we create a separate TaskListView view that displays the list of tasks and a button to add new tasks. After adding a new task, the user should be redirected to the add task screen, so we create a separate AddTaskView view.


// To pass the UserManager object to all three views, we can create its instance in ContentView, and then pass it as a parameter to both TaskListView and AddTaskView. However, this can become a problem if we decide to add even more nested views, as we will need to pass UserManager through many intermediate views.


// Instead of this, we can use @EnvironmentObject to pass UserManager down through the view hierarchy. This way, all views that need access to UserManager can simply declare it as an @EnvironmentObjectand use it as needed.

import SwiftUI

struct EnvironmentObjectView: View {
    
    @StateObject var numberManager = NumberManager()
    
    var body: some View {
        VStack {
            BlackView()
        }
    }
}

#Preview {
    EnvironmentObjectView()
}
