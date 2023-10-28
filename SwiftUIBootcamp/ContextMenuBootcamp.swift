//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 28/10/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgorundColor: Color = Color.teal
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Home")
                .font(.headline)
            Text("Context Menu")
                .font(.subheadline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgorundColor)
        .clipShape(
            RoundedRectangle(cornerRadius: 30)
        )
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                backgorundColor = .yellow
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgorundColor = .red
            }, label: {
                Text("Report Post")
            })
            
            Button(action: {
                backgorundColor = .green
            }, label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            })
        }))
    }
}

#Preview {
    ContextMenuBootcamp()
}
