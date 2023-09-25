//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/09/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        /*
        ZStack {
            
            Color.teal
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    Text("Ini adalah judul")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
        } */
        
        
        
        // # Cara 2, tidak menggunakab ZStack, tapi langsung di dalam background
        
        
        ScrollView {
            VStack {
                Text("Ini adalah judul")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background {
            Color.teal
                .ignoresSafeArea()
        }
        
        
        
        
        
        
        
        
        
        
        /*
        ZStack {
            // daripada membuat padding pada konten tsb untuk berada di safe area.
            //  mending menggunakan ZStack
            
            // background
            Color.teal
                .ignoresSafeArea()
            
            // foreground
            VStack {

                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(.red)
                Spacer()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(.red)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        } */
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}


