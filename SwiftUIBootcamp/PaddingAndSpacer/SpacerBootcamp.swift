//
//  Spacer.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 12/09/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        //spacer memberikann space atau ruang diantara objek secara otimatis(dinamis))
        // menyesuaikan dengan ukuran diantara objek tersebut
        
        VStack(spacing: 0) {
            Text("Spacer di dalam Stack")
                .font(.title3)
            
            // HStack 1
            HStack (spacing: 15){
                Rectangle()
                    .frame(width: 100, height: 100)
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            .background(.teal) // background di dalam HStack
            
            Text("Spacer di dalam Stack")
                .font(.title3)
                .padding(.top)
            
            // HStack 2
            HStack {
                Rectangle()
                    .frame(width: 75, height: 100)
                
                Spacer()
                    .frame(height: 5)
                    .background(.red)
                
                Rectangle()
                    .frame(width: 150, height: 100)
            }
            .padding(.horizontal, 10)
            .background(.gray)
            
            Text("Menggunakan Spacer untuk mengarahkan object ke kiri/kanan")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing], 15)
            
            // HStack 3
            HStack (){
                
                Spacer()
                    .frame(height: 5)
                    .background(.white)
                
                Rectangle()
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 200, height: 100)
            }
            .background(Color("VividCerise"))
            
        }
        //.padding(.horizontal,5)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
