//
//  SquaresRow.swift
//  GesturesExploration
//
//  Created by Weerawut Chaiyasomboon on 23/2/2567 BE.
//

import SwiftUI

struct SquaresRow: View {
    let colors: [Color]
    let dim: CGFloat
    let cornerRadius: CGFloat
    
    init(colors: [Color], dim: CGFloat = 50, cornerRadius: CGFloat = 5) {
        self.colors = colors
        self.dim = dim
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        GridRow{
            ForEach(colors, id: \.self){ color in
                color
                    .frame(width: dim, height: dim)
                    .cornerRadius(cornerRadius)
            }
        }
    }
}

struct GradientBackground: View {
    let colors: [Color]
    let opacity: CGFloat
    
    init(colors: [Color], opacity: CGFloat = 1) {
        self.colors = colors
        self.opacity = opacity
    }
    
    var body: some View {
        LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(opacity)
            .ignoresSafeArea()
    }
}

#Preview {
    ZStack {
        GradientBackground(colors: [.yellow,.indigo,.cyan], opacity: 0.4)
        
        Grid {
            ForEach(0 ..< 10) { i in
                SquaresRow(colors: [.red,.green,.blue], dim: CGFloat(i) * 5)
            }
            
            ForEach(0 ..< 10) { i in
                SquaresRow(colors: [.red,.green,.blue], dim: CGFloat(10-i) * 5)
            }
        }
    }
}
