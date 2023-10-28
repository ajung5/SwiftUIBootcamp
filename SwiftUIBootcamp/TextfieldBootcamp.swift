//
//  TextfieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 28/10/23.
//

import SwiftUI
import UIKit

struct TextfieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Tulis sesuatu disini", text: $textFieldText)
                    .padding()
                    .background(.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                Button(action: {
                    if textValidation() {
                        saveText()
                    }
//                    } else {
//                        alertTitle = "Succesfully Uploading Video"
//                        alertMessage = "Your video now public"
//                        //alertType = nil
//                        showAlert.toggle()
//                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textValidation() ? .blue : .gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundStyle(.white)
                        .font(.headline)
                })
               // .disabled(!textValidation())
                
                // area untuk menampilkan text/data yang di inputkan
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Text Field")
        }
    }
    
    // function
    func saveText() {
        dataArray.append(textFieldText)
    }
    
    func textValidation() -> Bool {
        // check text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
}

#Preview {
    TextfieldBootcamp()
}
