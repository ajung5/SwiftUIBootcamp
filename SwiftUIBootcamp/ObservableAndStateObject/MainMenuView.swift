//
//  MainMenuView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 23/10/23.
//

import SwiftUI

struct MainMenuView: View {
    
    var carManager: CarManager = CarManager()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(carManager.carArray) { item in
                    CarListView(carModel: item)
                }
            }
        }
    }
}

#Preview {
    MainMenuView()
}
