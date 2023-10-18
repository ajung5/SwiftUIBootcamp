//
//  FruitsListView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import SwiftUI

struct FruitsListView: View {
    
    @State var fruit: FruitModel
    
    var body: some View {
        HStack {
            Text(fruit.name)
        }
    }
}

#Preview {
    FruitsListView(fruit: fruitsArray[0])
}
