//
//  AakuDanKamu.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 02/10/23.
//

import SwiftUI

struct AakuDanKamu: View {
    
    @State var showSymbol: Bool = false
    @State var showSymbols: Bool = false
    
    var body: some View {
        VStack (spacing: nil) {
            HStack {
                Button {
                    showSymbol.toggle()
                } label: {
                    HStack {
                        Text("Aku:")
                            .font(.system(size: 24))
                        Text(showSymbol.description)
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(height: 35)
                            )
                    }
                }
                
                Text(" + ")
                    .font(.largeTitle)
                
                Button {
                    showSymbols.toggle()
                } label: {
                    HStack {
                        Text("Kamu:")
                            .font(.system(size: 24))
                        Text(showSymbols.description)
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(height: 35)
                            )
                    }
                }
            }
            
            if showSymbol && showSymbols {
                Image(systemName: "heart.circle.fill")
                    .font(.system(size: 122))
                    .symbolRenderingMode(.multicolor)
            }
            
            Spacer()
        }
        .padding(.horizontal, 15)
        
    }
}

struct AakuDanKamu_Previews: PreviewProvider {
    static var previews: some View {
        AakuDanKamu()
    }
}
