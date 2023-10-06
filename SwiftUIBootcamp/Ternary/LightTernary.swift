//
//  LightTernary.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 04/10/23.
//

import SwiftUI

struct LightTernary: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        VStack (spacing: 15) {
            Button("Sakelar Lampu: \(isOn.description)") {
                isOn.toggle()
            }
            
            Image(systemName: isOn ? "sun.max.fill" : "sun.max")
                .renderingMode(.original)
                .font(.system(size: 55))
        }
    }
}

#Preview {
    LightTernary()
}
