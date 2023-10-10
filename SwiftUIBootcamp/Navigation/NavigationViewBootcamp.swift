//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 09/10/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    
    @State private var selectedFolder: String?
        @State private var selectedItem: String?
        
        @State private var folders = [
            "All": [
                "Item1",
                "Item2"
            ],
            "Favorites": [
                "Item2"
            ]
        ]
    
    var body: some View {
        NavigationSplitView {
                    List(selection: $selectedFolder) {
                        ForEach(Array(folders.keys.sorted()), id: \.self) { folder in
                            NavigationLink(value: folder) {
                                Text(verbatim: folder)
                            }
                        }
                    }
                    .navigationTitle("Sidebar")
                } content: {
                    if let selectedFolder {
                        List(selection: $selectedItem) {
                            ForEach(folders[selectedFolder, default: []], id: \.self) { item in
                                NavigationLink(value: item) {
                                    Text(verbatim: item)
                                }
                            }
                        }
                        .navigationTitle(selectedFolder)
                    } else {
                        Text("Choose a folder from the sidebar")
                    }
                } detail: {
                    if let selectedItem {
                        NavigationLink(value: selectedItem) {
                            Text(verbatim: selectedItem)
                                .navigationTitle(selectedItem)
                        }
                    } else {
                        Text("Choose an item from the content")
                    }
                }
    }
}

#Preview {
    NavigationViewBootcamp()
}
