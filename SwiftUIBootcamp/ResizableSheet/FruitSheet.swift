//
//  FruitSheet.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 03/02/24.
//

import SwiftUI

struct FruitSheet: View {
    
    @State private var showingSheet = false
    @State private var selectedOption = "Apple"
    
    let options = [
        "Apple",
        "Banana",
        "Orange",
        "Peach",
        "Grape"
    ]
    
    var body: some View {
        Button("Show Options") { showingSheet = true }
        .sheet(isPresented: $showingSheet) {
            NavigationStack {
                List {
                    Picker("Choose a fruit", selection: $selectedOption) {
                        ForEach(options, id: \.self) { option in
                            Text(option)
                        }
                    }
                }
            }
            .presentationDetents([.fraction(0.2), .medium])
            .presentationDragIndicator(.hidden)
        }
    }
}

#Preview {
    FruitSheet()
}
