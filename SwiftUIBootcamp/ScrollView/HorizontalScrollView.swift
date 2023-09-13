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
            // pada scrollview, jika kita melakukan pengulangan dengan banyak data, maka data tersebbut akan di download semua oleh user.
            // bayangkan jika ada 1000 atau sejuta shape yang harus di download
            // untuk mengantisipasi tersebut, maka gunakanlah keyword "lazy" pada stack, Lazy hanya akan load data yang tampil di screen aja
            
            LazyVStack {
                ForEach(0..<15) { item in
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack {
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
