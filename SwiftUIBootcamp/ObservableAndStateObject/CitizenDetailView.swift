//
//  CitizenDetailView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 24/10/23.
//

import SwiftUI

struct CitizenDetailView: View {
    
    @ObservedObject var citizenManager: CitizenManager
    
    var body: some View {
        ForEach(citizenManager.cityArray) { item in
            Text(item.city)
        }
    }
}

#Preview {
    CitizenDetailView(citizenManager: CitizenManager())
}
