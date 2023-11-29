//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 29/11/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/id/8/400")
    
    var body: some View {
//        AsyncImage(url: url) { returnedImage in
//            // add modifier to image url
//            returnedImage
//                .resizable()
//                .frame(width: 100, height: 100)
//                .scaledToFit()
//                .clipShape(Circle())
//        } placeholder: {
//            ProgressView()
//        }

        // AsyncImage with Phase
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .frame(width: 100, height: 100)
                    .scaledToFit()
                    .clipShape(Circle())
            case .failure:
                Image(systemName: "questionmark")
            default:
                Image(systemName: "questionmark")
            }
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
