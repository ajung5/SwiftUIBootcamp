//
//  AlertWithBinding.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 08/11/23.
//

import SwiftUI

struct TVShow: Identifiable {
    var id: String { name }
    let name: String
}

struct AlertWithBinding: View {
    
    @State private var selectedShow: TVShow?
    
    var body: some View {
        VStack(spacing: 20) {
            Text("What is your favorite TV Show?")
                .font(.headline)
            
            // Button #1
            Button {
                selectedShow = TVShow(name: "The Last of Us")
            } label: {
                Text("Select The Last of Us")
            }
            
            // Button #2
            Button("Select Catatan Si Boy") {
                selectedShow = TVShow(name: "Catatan Si Boy")
            }
        }
        .alert(item: $selectedShow) { show in
            Alert(title: Text(show.name), message: Text("Great choice!"), dismissButton: .cancel())
        }
        
//        .alert(isPresented: $selectedShow) { show in
//            Alert(title: Text(show.name), message: Text("fff"), dismissButton: .cancel())
//        }
    }
}

#Preview {
    AlertWithBinding()
}
