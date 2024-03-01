//
//  CustomGrid.swift
//  SwiftUIBootcamp
//
//  Created by Agung Nawawi on 26/02/24.
//

import SwiftUI

struct CustomGrid: View {
    var body: some View {
        Grid {
            GridRow {
                Color.green.opacity(0.5)
                    .gridCellColumns(3)
            }
            GridRow {
                Color.teal.opacity(0.5)
                Color.red.opacity(0.5)
                    .gridCellColumns(2)
            }
            GridRow {
                Color.teal.opacity(0.5)
                Color.orange.opacity(0.5)
                Color.red.opacity(0.5)
            }
            GridRow {
                Color.orange.opacity(0.5)
                    .gridCellColumns(2)
                Color.red.opacity(0.5)
            }
        }
    }
}

#Preview {
    CustomGrid()
}
