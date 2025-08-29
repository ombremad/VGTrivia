//
//  DotPatternBackground.swift
//  VGTrivia
//
//  Created by Anne Ferret on 29/08/2025.
//

import SwiftUI

struct DotPatternBackground: View {
    let offset: CGFloat
    let dotSpacing: CGFloat = 80
    let dotSize: CGFloat = 12
    let colors: [Color] = [.babyBlue, .butter, .lavender, .minty, .peach]
    
    var body: some View {
        GeometryReader { geometry in
            let columns = Int((geometry.size.width / dotSpacing) + 2)
            let rows = Int((geometry.size.height / dotSpacing) + 2)
            
            ZStack {
                Color.background
                ForEach(0..<rows, id: \.self) { row in
                    ForEach(0..<columns, id: \.self) { column in
                        Circle()
                            .fill(colors.randomElement() ?? .clear)
                            .frame(width: dotSize, height: dotSize)
                            .position(
                                x: (CGFloat(column) * dotSpacing) + (offset.truncatingRemainder(dividingBy: dotSpacing)),
                                y: (CGFloat(row) * dotSpacing) + (offset.truncatingRemainder(dividingBy: dotSpacing))
                            )
                    }
                }
            }
        }
        .clipped()
    }
}

#Preview {
    DotPatternBackground(offset: 0)
        .ignoresSafeArea(.all)
}
