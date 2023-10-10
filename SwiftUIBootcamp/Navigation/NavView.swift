//
//  NavView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 10/10/23.
//

// When a menu item is tapped, we want to bring in a detail view that shows more information. We already placed ContentView inside a navigation stack, so now we can use a new view type called NavigationLink. We need to give this a destination – what kind of thing it should show – as well as what to show on-screen for the link.

// In practice, this looks like all the other containers we’ve used so far, so let’s try it out with a neat shortcut: although we’re going to be showing a detail view in just a minute, we can use a regular text view as a placeholder.

import SwiftUI

struct NavView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                // memindahkan ke halaman berikutnya
                NavigationLink("Hello World") {
                    MyOtherScreen()
                }
                
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("INBOX")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        MyOtherScreen()
                    } label: {
                        Image(systemName: "gear")
                    }
                    .tint(.red)
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    HStack(alignment: .center) {
                        Image(systemName: "person.fill")
                        //Spacer()
                        Text(("Sign In"))
                    }
                }
            }
        }
    }
}


// suatu kondisi dimana kita ga mau tombol back yang default
// jadi bisa hide nav bar untk membuat back button custom

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.vividCerise
                .ignoresSafeArea()
                //.navigationTitle("Subject")
                //.navigationBarBackButtonHidden(true)
                
            
            VStack {
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding(10)
                    Spacer()
                        .frame(alignment: .center)
                })
                
                Spacer()
                    .frame(width: 100, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                NavigationLink("Click Me") {
                    Text("Third Screen")
                }
                .padding(5)
                .foregroundStyle(.white)
                .background(
                    Color.green
                        .cornerRadius(5)
                        .shadow(radius: 5)
                )
                
               Spacer()
            }
        }
    }
    
}

#Preview {
    NavView()
    //MyOtherScreen()
}
