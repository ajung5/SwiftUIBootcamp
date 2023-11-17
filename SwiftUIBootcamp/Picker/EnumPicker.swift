//
//  EnumPicker.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 16/11/23.
//

import SwiftUI

enum FoodCategory: String, CaseIterable, Identifiable {
 case italian = "Italian"
 case mexican = "Mexico"
 case chinese = "Chinese"
 case indian = "Indian"
 case american = "American"
 var id: FoodCategory { self }
}

struct EnumPicker: View {
    
    @State private var selectedCategory: FoodCategory = .mexican
    
    var body: some View {
        List {
            Picker("Food Category", selection: $selectedCategory) {
               ForEach(FoodCategory.allCases) { category in
                    Text(category.rawValue).tag(category)
              }
            }
            .pickerStyle(MenuPickerStyle())
        }
    }
}

#Preview {
    EnumPicker()
}
