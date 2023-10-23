//
//  FruitsDetail.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 17/10/23.
//

import SwiftUI

struct FruitsDetail: View {
    
    @State var fruit: FruitModel
    
    var body: some View {
        Text(fruit.name)
    }
}

#Preview {
    FruitsDetail(fruit: fruitsArray[0])
}
