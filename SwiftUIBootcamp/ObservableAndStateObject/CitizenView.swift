//
//  CitizenView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 24/10/23.
//

import SwiftUI

// Citizen Model
struct CitizenModel: Identifiable {
    let id: UUID = .init()
    let city: String
    let citizenCount: Int
}

struct CitizenView: View {
    
    @State var cityArray: [CitizenModel] = [
        CitizenModel(city: "Subang", citizenCount: 300)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(cityArray) { item in
                    HStack {
                        Text("\(item.citizenCount)")
                            .foregroundStyle(.red)
                        
                        Text(item.city)
                            .font(.headline)
                            .bold()
                    }
                }
                .onDelete(perform: deleteCitizen)
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Citizen")
            .onAppear{
                getCitizen()
            }
        }
    }
    
    
    // Func getCitizen
    func getCitizen() {
        let city1 = CitizenModel(city: "Manado", citizenCount: 55)
        let city2 = CitizenModel(city: "Lampung", citizenCount: 44)
        let city3 = CitizenModel(city: "Bekasi", citizenCount: 33)
        
        cityArray.append(city1)
        cityArray.append(city2)
        cityArray.append(city3)
    }
    
    func deleteCitizen(index: IndexSet) {
        cityArray.remove(atOffsets: index)
    }
}

#Preview {
    CitizenView()
}
