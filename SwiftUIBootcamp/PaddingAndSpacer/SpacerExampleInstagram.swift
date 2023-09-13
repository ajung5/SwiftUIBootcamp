//
//  SpacerExampleInstagram.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 12/09/23.
//

import SwiftUI

struct SpacerExampleInstagram: View {
    var body: some View {
        VStack () {
            
            HStack(spacing: 25){
                Text("Instagram")
                Spacer()
                Image(systemName: "plus.app")
                    .foregroundColor(.white)
                
                Image(systemName: "heart")
                    .foregroundColor(.white)
                
                Image(systemName: "paperplane")
                    .foregroundColor(.white)
                
            }
            .padding()
            .font(.title)
            .background(.gray)
            //.padding(.horizontal)
            
            
            Spacer()
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            
            Spacer()
            
            HStack(spacing: 50){
                Image(systemName: "house")
                Image(systemName: "iphone.circle")
                Image(systemName: "globe")
                Image(systemName: "handbag")
                Image(systemName: "person.circle")
            }
            .padding()
            .font(.title)
            .background(.green)
        }
        //.padding(.horizontal)
        
    }
}

struct SpacerExampleInstagram_Previews: PreviewProvider {
    static var previews: some View {
        SpacerExampleInstagram()
    }
}
