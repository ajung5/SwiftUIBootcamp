//
//  SubmitTextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 30/11/23.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var teks: String = ""
    
    var body: some View {
        TextField("Placeholder", text: $teks)
            .submitLabel(.done) // ini untuk pengganti tombol di keyboard
            .foregroundStyle(.black)
            .padding(.leading)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .overlay( RoundedRectangle(cornerRadius: 20)
                .stroke(Color.purple, lineWidth: 1) )
            .tint(.black)
            .onSubmit {
                print("Return to Console")
            }
            .padding(40)
        
        TextField("Placeholder", text: $teks)
            .submitLabel(.search)
            .foregroundStyle(.black)
            .padding(.leading)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .overlay( RoundedRectangle(cornerRadius: 20)
                .stroke(Color.purple, lineWidth: 1) )
            .tint(.black)
            .onSubmit {
                print("Return to Console")
            }
            .padding(40)
        
        TextField("Placeholder", text: $teks)
            .submitLabel(.send)
            .foregroundStyle(.black)
            .padding(.leading)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .overlay( RoundedRectangle(cornerRadius: 20)
                .stroke(Color.purple, lineWidth: 1) )
            .tint(.black)
            .onSubmit {
                print("Return to Console")
            }
            .padding(40)
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
