//
//  AlertSingleOK.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 08/11/23.
//

import SwiftUI

struct AlertSingleOK: View {
    
    @State private var showAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showAlert = true
        }
        .alert("Important Message", isPresented: $showAlert) {
            Button("OK", role: .cancel) {
                
            }
        }
    }
}

#Preview {
    AlertSingleOK()
}
