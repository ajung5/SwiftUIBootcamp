//
//  SijawaraDashboard.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 30/09/23.
//

import SwiftUI

struct SijawaraDashboard: View {
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            VStack {
                topMenu()
                
                accountSummary()
                
                Spacer()
                
                Text("ajhkhk")
            }
            .padding(.horizontal, 20)
        }
    }
}


// top menu
struct topMenu: View {
    var body: some View {
        
        let kolom: [GridItem] = [
            GridItem(.fixed(75), spacing: nil, alignment: .leading),
            GridItem(.flexible(), spacing: 5, alignment: .center),
            GridItem(.fixed(75), spacing: nil, alignment: .trailing)
        ]
        
        VStack {
            LazyVGrid(columns: kolom){
                Image(systemName: "text.justify")
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("SIJAWARA")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                
                Image(systemName: "arrow.clockwise")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}


//  presensi dan account summary
struct accountSummary: View {
    var body: some View {
        VStack {
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(height: 75)
            }
            
        }
    }
}

struct SijawaraDashboard_Previews: PreviewProvider {
    static var previews: some View {
        SijawaraDashboard()
    }
}
