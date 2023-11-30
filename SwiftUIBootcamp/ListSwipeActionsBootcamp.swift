//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 29/11/23.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var planets: [String] = [
        "earth", "mars", "jupiter", "saturnus", "neptune"
    ]
    
    var body: some View {
        List {
            ForEach(planets, id: \.self) {
                // $0 untuk looping, pengganti "item in"
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                
                    // left
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
            }
            //.onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
