//
//  ConditionalsView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 04/10/23.
//

import SwiftUI

struct ConditionalsView: View {
    
    @State var isLoading: Bool = false
    
    var body: some View {
        Button("IS LOADING: \(isLoading.description)") {
            isLoading.toggle()
        }
        
        if isLoading {
            ProgressView()
        } else {
            
        }
    }
}

#Preview {
    ConditionalsView()
}
