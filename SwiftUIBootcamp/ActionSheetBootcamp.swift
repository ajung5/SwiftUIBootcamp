//
//  ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 12/10/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var isShowingDialog: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isMyPost
                    isShowingDialog.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .tint(.primary)
            }
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .padding()
        .confirmationDialog("Are You Sure?",
                            isPresented: $isShowingDialog) {
            
            switch actionSheetOption {
            case .isOtherPost:
                Button("Share") {
                    
                }
                
                Button("Report", role: .destructive) {
                    
                }
                
            case .isMyPost:
                Button("Share") {
                    
                }
                
                Button("Report", role: .destructive) {
                    
                }
                
                Button("Delete", role: .destructive) {
                    
                }
            }
        } message: {
            Text("You Cannot undo this action")
        }
    }
}

#Preview {
    ActionSheetBootcamp()
}
