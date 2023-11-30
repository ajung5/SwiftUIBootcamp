//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 30/11/23.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            Color.teal
                .tabItem {
                    Image(systemName: "house.circle")
                    Text("Home")
                }
            
            
            Color.vividCerise
                .tabItem {
                    Image(systemName: "bookmark.circle.fill")
                    Text("Bookmark")
                }
                .badge(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            
            Color.gray
                .tabItem {
                    Image(systemName: "video.circle.fill")
                    Text("Video")
                }
                .badge("New")
            
            
            Color.green
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("person")
                }
        }
    }
}

#Preview {
    BadgesBootcamp()
}
