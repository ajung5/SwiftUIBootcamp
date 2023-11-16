//
//  BasicPicker.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 16/11/23.
//

import SwiftUI

struct BasicPicker: View {
    
    @State var selectedCategory = ""
    
    var body: some View {
        VStack {
            Text("Selected Category: \(selectedCategory)")
            
            Picker("Food Category", selection: $selectedCategory) {
                Text("Italian")
                    .tag("Italian")
                Text("American")
                    .tag("American")
                Text("Indian")
                    .tag("Indian")
            }
        }
    }
}

#Preview {
    BasicPicker()
}
