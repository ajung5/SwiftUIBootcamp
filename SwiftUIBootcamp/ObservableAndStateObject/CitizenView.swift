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
    
//    @State var cityArray: [CitizenModel] = [
//        CitizenModel(city: "Subang", citizenCount: 300)
//    ]
    
    // variabel untuk mengakses array yang ada didalam class CitizenManager
    // untuk membuat view mengupdate data dari class tersebut, perlu ditambahkan property wrapper pada variabel "citizenManager"
    @ObservedObject var citizenManager: CitizenManager = CitizenManager()
    
    var body: some View {
        NavigationStack {
            List {
                
                if citizenManager.isLoading {
                    ProgressView()
                } else {
                    ForEach(citizenManager.cityArray) { item in
                        HStack {
                            Text("\(item.citizenCount)")
                                .foregroundStyle(.red)
                            
                            Text(item.city)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: citizenManager.deleteCitizen)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Citizen")
            .onAppear{
                citizenManager.getCitizen()
            }
        }
    }
}

#Preview {
    CitizenView()
}
