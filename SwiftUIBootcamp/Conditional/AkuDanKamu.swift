//
//  AkuDanKamu.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 02/10/23.
//

import SwiftUI

struct AkuDanKamu: View {
    
    
    var body: some View {
        
        @State var aku: Bool = false
        @State var kamu: Bool = false
        
        VStack(spacing: nil) {
            HStack {
                Button {
                    aku.toggle()
                } label: {
                    HStack {
                        Text("Aku: ")
                            .font(.system(size: 24))
                        Text(aku.description)
                            .foregroundStyle(.white)
                            .font(.system(size: 24))
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(height: 35)
                            )
                    }
                }

            }
        }
    }
}

struct AkuDanKamu_Previews: PreviewProvider {
    static var previews: some View {
        AkuDanKamu()
    }
}
