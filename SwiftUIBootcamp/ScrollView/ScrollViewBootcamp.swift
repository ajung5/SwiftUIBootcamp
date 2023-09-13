//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 13/09/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    ForEach(0..<15) { index in
                        Rectangle()
                            .fill(.teal)
                            .frame(maxWidth: .infinity, minHeight: 100)
                            .overlay(
                                Text("\(index)")
                                    .padding([.leading, .top], 15)
                                    .font(.title)
                                    .foregroundColor(.white)
                                ,alignment: .topLeading
                            )
                    }
                }
            }
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    ForEach(0..<15) { item in
                        Circle()
                            .fill(.yellow)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Text("\(item)")
                                    .font(.title)
                            )
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
