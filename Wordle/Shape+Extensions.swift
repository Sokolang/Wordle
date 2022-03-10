//
//  Shape+Extensions.swift
//  Wordle
//
//  Created by Anzhelika Sokolova on 10.03.2022.
//

import SwiftUI

extension Shape {
    
    func style<StrokeStyle: ShapeStyle, FillStyle: ShapeStyle>(
        withStroke strokeContent: StrokeStyle,
        lineWidth: CGFloat = 1,
        fill fillContent: FillStyle
    ) -> some View {
        stroke(strokeContent, lineWidth: lineWidth)
            .background(fill(fillContent))
    }
    
}
