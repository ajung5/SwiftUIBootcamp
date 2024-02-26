//
//  GridViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 26/02/24.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 10, verticalSpacing: 10) {
            ForEach(0..<4) { rowIndex in
                GridRow(alignment: .bottom) {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        
                        if cellNumber == 7 {
                             EmptyView()
//                            Color.green
//                                .gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            cell(num: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridCellAnchor(.leading)
                                .gridColumnAlignment(
                                    cellNumber == 1 ? .trailing :
                                    cellNumber == 4 ? .leading :
                                    .center
                                )
                        }
                    }
                }
            }
        }
    }
    
    private func cell(num: Int) -> some View {
        Text("\(num)")
            .frame(height: num == 10 ? 20 : nil)
            .font(.largeTitle)
            .padding()
            .background(Color.teal)
    }
}

#Preview {
    GridViewBootcamp()
}
