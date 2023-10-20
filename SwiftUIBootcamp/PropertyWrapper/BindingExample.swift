//
//  BindingExample.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 20/10/23.
//

import SwiftUI

struct BindingExample: View {
    
    @State var show = false
    
    var body: some View {
        ZStack {
            Text("View Transition")
                .padding()
                .background(
                    Capsule()
                        .stroke()
                )
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                }
            if show {
                
            }
        }
    }
}


struct NewView: View {
    
    @Binding var show: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .padding()
                    .onTapGesture {
                        withAnimation(.spring()) {
                            show.toggle()
                        }
                    }
    }
}

#Preview {
    //BindingExample()
    NewView(show: .constant(false))
}
