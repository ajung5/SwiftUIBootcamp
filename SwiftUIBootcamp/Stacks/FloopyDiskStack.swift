//
//  FloopyDiskStack.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 11/09/23.
//

import SwiftUI

struct FloopyDiskStack: View {
    
    private let radius: CGFloat = 7
    
    var body: some View {
        VStack(spacing: 0){
            Text("Floopy Disk")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // front view
            Text("Front View")
                .font(.title)
                .padding(.top)
            ZStack(alignment: .bottom) {
                ZStack(alignment: .top){
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.black)
                        .frame(width: 285, height: 300)
                        .overlay(
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 100, height: 110)
                                .padding(.top, radius)
                                .cornerRadius(radius)
                                .padding(.top, -radius)
                                .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 100))
                            , alignment: .top
                        )
                        .overlay(
                            Text("HD")
                                .foregroundColor(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                                .padding(.init(top: 25, leading: 0, bottom: 0, trailing: 25))
                            ,alignment: .topTrailing
                        )
                    
                    
                    
                            
                    Rectangle()
                        .fill(Color("silver"))
                        .frame(width: 125, height: 110)
                        .padding(.top, radius)
                        .cornerRadius(radius)
                        .padding(.top, -radius)
                        //.padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 5 )
                                .fill(.black)
                                .frame(width: 28, height: 75)
                                .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 20))
                            ,alignment: .trailing
                        )
                }
                
                // kotak bawah
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 200, height: 175)
                        .padding(.bottom, radius)
                        .cornerRadius(radius)
                        .padding(.bottom, -radius)
                    
                    
                    Rectangle()
                        .fill(Color("Jasmine"))
                        .frame(width: 175, height: 155)
                        .padding(.bottom, radius)
                        .cornerRadius(radius)
                        .padding(.bottom, -radius)
                        .overlay(
                            Rectangle()
                                .fill(Color("VividCerise"))
                                .frame(width: 175, height: 125)
                            ,alignment: .bottom
                        )
                }
                
            }
            
            
            // Back view
            Text("Back View")
                .font(.title)
                .padding(.top)
            
            ZStack(alignment: .center) {
                ZStack(alignment: .top){
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.black)
                        .frame(width: 285, height: 300)
                        .overlay(
                            Rectangle()
                                .fill(Color("erieBlack"))
                                .frame(width: 200, height: 110)
                                .padding(.top, radius)
                                .cornerRadius(radius)
                                .padding(.top, -radius)
                                .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                            , alignment: .top
                        )
                        
                            
                    Rectangle()
                        .fill(Color("silver"))
                        .frame(width: 100, height: 110)
                        .padding(.top, radius)
                        .cornerRadius(radius)
                        .padding(.top, -radius)
                        .padding(.init(top: 0, leading: 15, bottom: 0, trailing: 0))
                        .overlay(
                            RoundedRectangle(cornerRadius: 5 )
                                .fill(.black)
                                .frame(width: 28, height: 75)
                                .padding(.init(top: 0, leading: 0, bottom: 0, trailing: 20))
                            ,alignment: .trailing
                        )
                }
                
                // kotak bawah
                Circle()
                    .fill(Color("silver"))
                    .frame(width: 100, height: 100)
                    .padding(.bottom, radius)
                    .cornerRadius(radius)
                    .padding(.bottom, -radius)
                    .padding(.init(top: 50, leading: 0, bottom: 0, trailing: 0))
                    .overlay(
                        Rectangle()
                            .frame(width: 30, height: 30)
                        ,alignment: .bottom
                    )
                
            }
        }
    }
}

struct FloopyDiskStack_Previews: PreviewProvider {
    static var previews: some View {
        FloopyDiskStack()
    }
}
