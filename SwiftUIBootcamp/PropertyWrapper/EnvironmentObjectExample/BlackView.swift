//
//  BlackView.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 22/10/23.
//

import SwiftUI

struct BlackView: View {
    
    @StateObject var numberManager = NumberManager()
    
    var body: some View {
        VStack(alignment: .center) {
            Text("\(numberManager.number)")
                .padding()
                .foregroundColor(.white)
                .font(.title)
            Button {
                numberManager.number = Int.random(in: 0..<101)
            } label: {
                Text("Generate Number")
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            BlueView()
        }
        .padding(50)
        .background {
            Color.black
        }
        .environmentObject(numberManager)
    }
}

struct BlueView: View {
    
    @EnvironmentObject var numberManager: NumberManager
    
    var body: some View {
        VStack {
            Text("\(numberManager.number)")
                .padding()
                .foregroundColor(.white)
                .font(.title)
            GreenView()
        }
        .padding(50)
        .background {
            Color.blue
        }
    }
}

struct GreenView: View {
    
    @EnvironmentObject var numberManager: NumberManager
    
    var body: some View {
        VStack {
            Text("\(numberManager.number)")
                .padding()
                .foregroundColor(.white)
                .font(.title)
        }
        .background {
            Color.green
        }
    }
}

#Preview {
    BlackView()
}
