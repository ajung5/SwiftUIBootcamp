//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 10/10/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.teal
    @State var foregroundColor: Color = .white
    
    // Custom Alert #1
    // untuk membuat title dan message alert menjadi dinamic, maka perlu membuat variable untuk menampungnya
    // jika menggunakan meetode ini, ketika akan mengubah isi dari variabel tsb, maka semua isi var tsb harus di ubah juga, agar bisa tampil isi yang baru
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Button("Button 1") {
                    alertTitle = "Error Euy"
                    alertMessage = "The Video Could Not be Uploaded"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertTitle = "Succesfully Uploading Video"
                    alertMessage = "Your video now public"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    // func alert
    func getAlert() -> Alert {
//        return Alert(title: Text("Ini Judul"),
//              message: Text("Penjelasan Error"),
//              primaryButton: .destructive(Text("Ok"),
//                                          action: {
//            backgroundColor = .vividCerise
//            //foregroundColor = .white
//        }),
//              secondaryButton: .cancel())
        
        return Alert(title: Text(alertTitle),
                     message: Text(alertMessage),
                     dismissButton: .default(Text("OK")))
    }
}

#Preview {
    AlertBootcamp()
}
