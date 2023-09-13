//
//  HorizontalScrollView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 13/09/23.
//

import SwiftUI

struct HorizontalScrollView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                ForEach(0..<15) { item in
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 100)
                                    .shadow(
                                        color: .green,
                                        radius: 5,
                                        x: 5, y: 5)
                                    .padding(.all,5)
                                    .overlay (
                                        Text("Row: \(item), Colom: \(index)")
                                            .foregroundColor(.black)
                                        ,alignment: .center
                                    )

                            }
                        }
                    }
                }
            }
        }
    }
}

struct HorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}
