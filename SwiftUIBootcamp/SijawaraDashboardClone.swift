//
//  SijawaraDashboardClone.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 30/09/23.
//

import SwiftUI

struct SijawaraDashboardClone: View {
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            VStack {
                topMenu()
                
                Presensi()
                
                accountSummary()
                
                mainMenu()
                
                Spacer()
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
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.clockwise")
                        .font(.title)
                        .foregroundColor(.white)
                }

            }
        }
    }
}


//  presensi
struct Presensi: View {
    
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
        }
        .padding(.top, 5)
    }
}

// account summary
struct accountSummary: View {
    
    let kolom: [GridItem] = [
        GridItem(.fixed(55), spacing: 15, alignment: .leading),
        GridItem(.flexible(), spacing: nil, alignment: .leading)
    ]
    
    let kolom2: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: .center),
        GridItem(.flexible(), spacing: nil, alignment: .center),
        GridItem(.flexible(), spacing: nil, alignment: .center)
    ]

    
    var body: some View {
        // Account Summary section
        ZStack {
            //Background Shape
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(height: 150)
            
            // summary
            VStack(spacing: 20) {
                LazyVGrid(columns: kolom) {
                    Image("ajung")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 55)
                        .clipShape(
                            Ellipse()
                        )
                    
                    VStack (alignment: .leading) {
                        Text("AGUNG NAWAWI, S.Kom")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                        
                        Text("199405152020121002")
                            .font(.callout)
                    }
                    
                }
                
                Divider()
                
                LazyVGrid(columns: kolom2) {
                    //datang
                    HStack {
                        Circle()
                            .fill(.green)
                            .frame(width: 15, height: 15)
                        VStack(alignment: .leading) {
                            Text(("Datang"))
                                .font(.subheadline)
                            Text(("07:24"))
                                .font(.caption)
                        }
                    }
                    
                    // pulang
                    HStack {
                        Circle()
                            .fill(.green)
                            .frame(width: 15, height: 15)
                        VStack(alignment: .leading) {
                            Text(("Pulang"))
                                .font(.subheadline)
                            Text(("16:24"))
                                .font(.caption)
                        }
                    }
                    
                    //terlambat
                    HStack {
                        Circle()
                            .fill(.green)
                            .frame(width: 15, height: 15)
                        VStack(alignment: .center) {
                            Text(("Terlambat"))
                                .font(.subheadline)
                            Text(("-"))
                                .font(.caption)
                        }
                    }
                }
            }
            .padding(.horizontal, 15)
        }
    }
}


// main menu
struct mainMenu: View {
    
    private var symbols = ["person.circle",
                           "list.clipboard.fill",
                           "creditcard.fill",
                           "plus.rectangle.on.folder.fill",
                           "text.badge.checkmark",
                           "doc.text.magnifyingglass",
                           "map.fill",
                           "bell.badge.fill",
                           "questionmark.circle.fill"]
    
    private var captions = ["Profile",
                           "Aktifitas",
                           "TPP",
                           "Pengajuan",
                           "Validasi",
                           "Riwayat",
                           "Lokasi",
                           "Notifikasi",
                           "Bantuan"]
    
    private var kolom: [GridItem] = [
        GridItem(.flexible(), spacing: 25, alignment: .center),
        GridItem(.flexible(), spacing: 25, alignment: .center),
        GridItem(.flexible(), spacing: 25, alignment: .center)
    ]
    
    var body: some View {
        LazyVGrid(columns: kolom, spacing: 35) {
            ForEach(0..<9) { index in
                VStack{
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(
                                    LinearGradient(colors: [Color.blue,
                                                            Color.teal],
                                                   startPoint: .top,
                                                   endPoint: .bottom)
                                )
                                .frame(width: 65, height: 65)

                            Image(systemName: symbols[index])
                                .foregroundColor(.white)
                                .font(.system(size: 45))
                        }
                    }
                    
                    Text(captions[index])
                }
            }
        }
        .padding(.top, 35)
    }
}

struct SijawaraDashboardClone_Previews: PreviewProvider {
    static var previews: some View {
        SijawaraDashboardClone()
    }
}
