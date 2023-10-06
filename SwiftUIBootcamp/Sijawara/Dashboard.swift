//
//  Dashboard.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 30/09/23.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            
            VStack {
                NavBar()
                
                Absence()
                
                AccountDetail()
                
                MenuUtama()
                
                Spacer()
            }
            .padding(.horizontal, 20)
        }
    }
}

//NavBar
struct NavBar: View {
    
    private var kolom: [GridItem] = [
        GridItem(.fixed(75), spacing: nil, alignment: .leading),
        GridItem(.flexible(), spacing: nil, alignment: .center),
        GridItem(.fixed(75), spacing: nil, alignment: .trailing)
    ]
    
    @State var rotateAnimate: Bool = false
    @State var rotationAngle: Double = 0.0
    
    var body: some View {
        VStack {
            LazyVGrid(columns: kolom) {
                Image(systemName: "text.justify")
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("SIJAWARA")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                
                Button {
                    rotateAnimate.toggle()
                    rotationAngle += 360
                } label: {
                    Image(systemName: "arrow.clockwise")
                        .font(.title)
                        .foregroundColor(.white)
                        .rotationEffect(.degrees(rotationAngle))
                        .animation(.easeInOut,
                                   value: rotateAnimate)
                }

            }
        }
    }
}

struct Absence: View {
    
    let kolom: [GridItem] = [
        GridItem(.fixed(35), spacing: nil, alignment: .center),
        GridItem(.fixed(175), spacing: nil, alignment: .leading),
        GridItem(.flexible(), spacing: nil, alignment: .center)
    ]
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
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
                        isAnimating.toggle()
                    } label: {
                        Text("Presensi")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .frame(width: isAnimating ? 100 : 75, height: 30)
                            .padding(.horizontal, 5)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(isAnimating ? .vividCerise : .green)
                            )
                            .animation(.spring(response: 0.5,
                                               dampingFraction: 0.7,
                                               blendDuration: 1),
                                       value: isAnimating)
                    }

                }
            }
        }
        .padding(.top, 5)
    }
}

// acount
struct AccountDetail: View {
    
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
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(height: 150)
            
            // details
            VStack (spacing: 20) {
                LazyVGrid(columns: kolom) {
                    Image("ajung")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 55)
                        .clipShape(
                            Ellipse()
                        )
                    VStack(alignment: .leading) {
                        Text("AGUNG NAWAWI, S.Kom")
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                        
                        Text("11242414124124124")
                            .font(.callout)
                    }
                }
                
                Divider()
                
                // bottom detail
                LazyVGrid(columns: kolom2) {
                    HStack {
                        Circle()
                            .fill(.green)
                            .frame(width: 15, height: 15)
                        VStack(alignment: .leading) {
                            Text("Datang")
                                .font(.subheadline)
                            Text("07:25")
                                .font(.caption)
                        }
                    }
                    
                    HStack {
                        Circle()
                            .fill(.green)
                            .frame(width: 15, height: 15)
                        VStack(alignment: .leading) {
                            Text("Pulang")
                                .font(.subheadline)
                            Text("16:25")
                                .font(.caption)
                        }
                    }
                    
                    HStack {
                        Circle()
                            .fill(.green)
                            .frame(width: 15, height: 15)
                        VStack(alignment: .center) {
                            Text("Terlambat")
                                .font(.subheadline)
                            Text("-")
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
struct MenuUtama: View {
    
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
                VStack {
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(
                                    LinearGradient(colors: [Color.blue,
                                                            Color.teal], startPoint: .top, endPoint: .bottom)
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

#Preview {
    Dashboard() 
}
