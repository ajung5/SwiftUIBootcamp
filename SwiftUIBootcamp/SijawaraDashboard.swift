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
    
    let kolom: [GridItem] = [
        GridItem(.fixed(35), spacing: nil, alignment: .center),
        GridItem(.fixed(175), spacing: nil, alignment: .leading),
        GridItem(.flexible(), spacing: nil, alignment: .center)
    ]
    
    var body: some View {
        VStack {
            
            // Presensi Section
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(height: 50)
                
                LazyVGrid(columns: kolom) {
                    Image(systemName: "clock")
                        .font(.system(size: 22))
                        .padding(.leading, 5)
                    
                    VStack (alignment: .leading) {
                        Text("Jadwal Presensi Hari Ini")
                            .font(.caption)
                        
                        Text("Jumat, 07:30 - 16:00 WIB")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Presensi")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .frame(height: 30)
                            .padding(.horizontal, 20)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.green)
                            )
                    }

                }
            }
            
            // Account Summary section
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(height: 150)
            }
        }
        .padding(.top, 5)
    }
}

struct SijawaraDashboard_Previews: PreviewProvider {
    static var previews: some View {
        SijawaraDashboard()
    }
}
