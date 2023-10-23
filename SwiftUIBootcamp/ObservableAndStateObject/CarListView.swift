//
//  CarListView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 23/10/23.
//

import SwiftUI

struct CarListView: View {
    
    @State var carModel: CarModel
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 50, height: 50)
            
            VStack {
                Text(carModel.brand)
                Text(carModel.model)
            }
            
            Spacer()
            
            Text("\(carModel.year)")
        }
        .padding()
    }
}

#Preview {
    CarListView(carModel: carModel[0])
}
