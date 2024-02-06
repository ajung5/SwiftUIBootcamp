//
//  NativePopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 06/02/24.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOPtions: [String] = [
        "Very Good 😍",
        "Good 😍",
        "Average 🙂",
        "Bad 😟",
        "Worst 😡"
    ]
    
    var body: some View {
        ZStack {
            Color.skyBlue.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Button("Give me Feedback") {
                    showPopover.toggle()
                }
                .foregroundStyle(.black)
                .padding(20)
                .background()
                .clipShape(Capsule())
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12, content: {
                            ForEach(feedbackOPtions, id: \.self) { option in
                                Button(option) {
                                    
                                }
                                
                                if option != feedbackOPtions.last {
                                    Divider()
                                }
                            }
                        })
                        .padding(15)
                    }
                    .presentationCompactAdaptation(.popover)
                })
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
