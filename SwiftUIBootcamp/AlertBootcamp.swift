//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 10/10/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.teal
    @State var foregroundColor: Color = .white
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            Button("Click Me") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    // func alert
    func getAlert() -> Alert {
        Alert(title: Text("Ini Judul"),
              message: Text("Penjelasan Error"),
              primaryButton: .destructive(Text("Ok"),
                                          action: {
            backgroundColor = .vividCerise
            //foregroundColor = .white
        }),
              secondaryButton: .cancel())
    }
}

#Preview {
    AlertBootcamp()
}
