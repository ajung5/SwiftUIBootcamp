//
//  MainDashboard.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/10/23.
//

import SwiftUI

struct MainDashboard: View {
    
    // initialize DeviceManager() kedalam var deviceManager
    @StateObject var deviceManager: DeviceManager = DeviceManager()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(deviceManager.devices.shuffled(), id: \.self) { item in
                    NavigationLink(destination: DeviceDetailView(selectedItem: item, deviceModel: deviceManager)) {
                        Text(item.name)
                    }
                }
            }
            .navigationTitle("Apple Devices")
        }
    }
}

#Preview {
    MainDashboard()
}


// # Perbedaan @State, @StateObject dan @ObservedObject

// @State
// @State is a property wrapper that allows a value to be stored and managed by a view. It is typically used for simple, localized state within a view hierarchy. Whenever the value assigned to a @State property changes, the view is automatically re-rendered. However, it's important to note that @State is only designed for use within a single view and cannot be shared across multiple views

// @StateObject
// @StateObject is another property wrapper that is used to store and manage an object's state within a view. It is specifically designed for reference types (classes) and is recommended for managing the lifecycle of observable objects. @StateObject is used when the object's lifecycle is tightly bound to the view's lifecycle. The object is created once and persisted across view updates.

// @ObservedObject
// @ObservedObject is used to bind an observable object to a view. It is typically used when a view needs to observe and react to changes in an external object's state. Unlike @StateObject, the lifecycle of the observed object is not managed by the view. Instead, the observed object is created and passed from the parent view.
