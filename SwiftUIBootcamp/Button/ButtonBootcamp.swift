//
//  ButtonBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 25/09/23.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title = "Landing Page"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            // Contoh Button #1 (Default)
            Button("Login") {
                self.title = "Anda Berhasil Login"
            }
            .accentColor(.green) // accentcolor bakal di ganti di ios versi selanjutnya
            
            
            // Contoh Button #2.
            // dengan menggunakan button ini, bisa custom label sesuai selera
            Button {
                self.title = "Silahkan untuk daftar"
            } label: {
                Text("Daftar".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.teal
                            .cornerRadius(15)
                            .shadow(radius: 15)
                    )
            }
            
            
            // Contoh Button #3.
            Button {
                self.title = "Like 23K"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)))
                    }
            }
            
            
            // Contoh Button #4.
            Button {
                self.title = "Selesai"
            } label: {
                Text ("Finish".uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
                    .bold()
                    .padding()
                    .padding(.horizontal, 15)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2)
                    )
            }


        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
