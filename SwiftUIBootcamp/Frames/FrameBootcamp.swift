//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 09/09/23.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        VStack {
            Text("Alignment Leading (Kiri)")
            Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.")
                .background(.green)
            
                // ini frame diatas layeer text.
                // jadi kita bisa menumpuk beberapa llayer modifier
                // alignment adalah untuk penjajaran di dalam frame
                .frame(width: 350, height: 75, alignment: .leading)
                .background(.red)
            
            Text("Alignment Center")
            Text("Cum sociis natoque penatibus et magnis dis parturient montes, nascetur")
                .background(Color("skyBlue"))
                .frame(width: 350, height: 75, alignment: .center)
                .background(.red)
            
            Text("Alignment Trailing (Kanan)")
            Text("Cum sociis natoque penatibus et magnis dis parturient montes, nascetur")
                .background(Color("skyBlue"))
                .frame(width: 350, height: 75, alignment: .trailing)
                .background(.red)
            
            // Dalam membuat frame, kita ga usah susah2 nentuin berapa ukuran frame nya, dengan cara menambahkan modifier maxWidth
            
            Text("Frame dengan maxWidth")
            Text("Cum sociis natoque penatibus et magnis dis parturient montes, nascetur")
                .background(Color("skyBlue"))
                .frame(maxWidth: .infinity, alignment: .center)
                .background(.yellow)
            
        }
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
