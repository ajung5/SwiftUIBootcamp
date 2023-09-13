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
            
            Text("Spacer di dalam Stack 2")
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
            
            Text ("Multiple Spacer")
                .font(.headline)
                .padding(.vertical, 15)
            
            // HStack 4
            // jika kita membuat spacer di dalam stack yang sama, maka spacer tersebut akan otomatis menyesuaikan dengan ukuran yang sama
            // spacer mempunyai property default dan minimunLength, fungsinya untuk menentukan panjang minimal dari spacer tersebut
            HStack(spacing: 0){
                Spacer()
                    .frame(height: 10)
                    .background(.white)
                
                Circle()
                    .fill(.red)
                    .frame(width: 75, height: 75)
                
                Spacer()
                    .frame(height: 10)
                    .background(.white)
                
                Circle()
                    .fill(.yellow)
                    .frame(width: 75, height: 75)
                
                Spacer()
                    .frame(height: 10)
                    .background(.white)
                
                Circle()
                    .fill(.green)
                    .frame(width: 75, height: 75)
                
                Spacer()
                    .frame(height: 10)
                    .background(.white)
            }
            .background(Color("silver"))
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
