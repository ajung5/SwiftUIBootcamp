//
//  ContentView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 05/09/23.
//

import SwiftUI

struct ContentView: View {
    let alignments: [TextAlignment] = [.leading, .center, .trailing]
    @State private var alignment = TextAlignment.center
    
    // custom tab bar
    @State private var selectedTab: Tab = .house

    var body: some View {
        VStack {
            Picker("Text alignment", selection: $alignment) {
                ForEach(alignments, id: \.self) { alignment in
                    Text(String(describing: alignment))
                }
            }

            Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                .font(.largeTitle)
                //.multilineTextAlignment(alignment)
                .frame(width: 300)
            
            Spacer()
            CustomTabBar(selectedTab: $selectedTab)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
