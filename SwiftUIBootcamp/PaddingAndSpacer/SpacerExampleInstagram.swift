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
                    .font(.custom("PinkishRegular", size: 28))
                    .foregroundColor(.white)
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
            
            ScrollView {
                VStack {
                    ForEach(0..<10) { item in
                        Text("Kinara Almahyra Prayasti")
                            //.font(.largeTitle)
                            .font(.custom("PinkishRegular", size: 55))
                            .padding(.bottom, 15)
                            .multilineTextAlignment(.leading)
                    }
                }
            }
            
            
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
