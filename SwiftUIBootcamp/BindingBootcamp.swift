//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 28/09/23.
//

// Binding dapat berbagi antar view.
// Pada umumnya, penggunan Binding ketika ingin mengirim sebuah nilai dari view ke sub-view.

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.teal
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.green
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = Color("Iris")
            buttonColor = Color.white
            title = "New Title"
        } label: {
            Text("Button 1")
                .foregroundColor(.white)
                .padding()
                .background(Color("VividCerise"))
                .cornerRadius(10)
                .frame(width: 150, height: 75)
        }

    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
