//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 27/11/23.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var animals: String = ""
    
    var body: some View {
        Picker(selection: $animals) {
            Text("SUV").tag("suv")
            Text("Sedan").tag("sedan")
            Text("Double Cabin").tag("dcab")
        } label: {
            Text("Cars Category")
        }
        .pickerStyle(MenuPickerStyle())
    }
}

#Preview {
    PickerBootcamp()
}
