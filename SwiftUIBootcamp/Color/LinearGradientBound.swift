//
//  LinearGradientBound.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 10/09/23.
//

import SwiftUI

struct LinearGradientBound: View {
    let start: UnitPoint
    let end: UnitPoint
    
    var body: some View {
        LinearGradient(colors: [.purple,
                                .blue],
                       startPoint: start,
                       endPoint: end
        )
    }
}

struct LinearGradientBound_Previews: PreviewProvider {
    static var previews: some View {
        
        /*
            Let’s see the top item in the list of gradient items. It has (x:0, y: 0) as the startPointand (x:0, y: 10) as the endPoint.
            It means its gradient start-point is the top edge of the [.purple, .blue] gradient (which means pure purple as a result) and its end-point is the one-tenth height from the top edge of the [.purple, .blue] gradient.
            I use 10 here since the total number of gradient views is 10 in this example. By doing this, we can extract the gradient partially and apply it to the view.
         */
        VStack {
            LinearGradientBound(start: .init(x: 0, y: 0), end: .init(x:0, y:10))
            LinearGradientBound(start: .init(x: 0, y: -1), end: .init(x:0, y:9))
            LinearGradientBound(start: .init(x: 0, y: -2), end: .init(x:0, y:8))
            LinearGradientBound(start: .init(x: 0, y: -3), end: .init(x:0, y:7))
            LinearGradientBound(start: .init(x: 0, y: -4), end: .init(x:0, y:6))
            LinearGradientBound(start: .init(x: 0, y: -5), end: .init(x:0, y:5))
            LinearGradientBound(start: .init(x: 0, y: -6), end: .init(x:0, y:4))
            LinearGradientBound(start: .init(x: 0, y: -7), end: .init(x:0, y:3))
            LinearGradientBound(start: .init(x: 0, y: -8), end: .init(x:0, y:2))
            LinearGradientBound(start: .init(x: 0, y: -9), end: .init(x:0, y:1))
        }
    }
}
