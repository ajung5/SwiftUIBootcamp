//
//  ForEachData.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 13/09/23.
//

import SwiftUI

struct ForEachData: View {
    
    let data: [String] = ["Hi", "Halo", "Hola"]
    
    let cars: [String] = ["Toyota", "Audi", "BMW", "Mercedes-Benz"]
    
    let myString: String = "John Doe"
    
    
    var body: some View {
        VStack (spacing: 8) {
            ForEach(data.indices, id: \.self) { index in
                Text("New Item: \(index)")
            }
            
            ForEach(cars.indices, id: \.self) { index in
                Text("\(cars[index])")
            }
        }
    }
}

struct ForEachData_Previews: PreviewProvider {
    static var previews: some View {
        ForEachData()
    }
}
