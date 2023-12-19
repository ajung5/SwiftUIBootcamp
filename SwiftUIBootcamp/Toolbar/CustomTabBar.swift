//
//  CustomTabBar.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 19/12/23.
//

import SwiftUI


enum Tab: String, CaseIterable {
    case house
    case message
    case person
    case leaf
    case gear
}

struct CustomTabBar: View {
    
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                        .foregroundStyle(selectedTab == tab ? .red : .gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        }
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.house))
}
