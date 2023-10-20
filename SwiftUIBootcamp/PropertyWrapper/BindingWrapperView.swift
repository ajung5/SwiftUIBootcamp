//
//  BindingWrapperView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 19/10/23.
//

// @Binding allows you to use a value that is stored in one part of the code in another part of the code.
// It is typically used in SwiftUI to pass a value from one view to another, allowing them to interact with each other.
// For example, imagine we have two views - one with a text field and the other with a button. We want the text field to update when the user presses the button. To do this, we can use @Binding
import SwiftUI

struct BindingWrapperView: View {
    
    @State private var teks = ""
    
    var body: some View {
        
        TextField("Enter Teks", text: $teks)
        Text(teks)
        
        Button("Update Teks") {
            teks = teks
        }
    }
}


struct SecondView: View {
    
    @Binding var teks: String
    
    var body: some View {
        Text(teks)
    }
    
}

// In this example, @Binding is used to pass the value from $text (which is in ContentView) to text (which is in SecondView), so when the user presses the button, the text field will update and display the new text.

#Preview {
    BindingWrapperView()
}
