//
//  SpiroSquare.swift
//  Spirograph
//
//  Created by Cédric Bahirwe on 14/12/2022.
//

import SwiftUI

struct SpiroSquare: Shape {
    @Binding var rotations: Int
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let amount = .pi / CGFloat(rotations)
        let transform = CGAffineTransform(rotationAngle: amount)

        for _ in 0 ..< rotations {
            path = path.applying(transform)
            path.addRect(CGRect(x: -rect.width / 2, y: -rect.height / 2, width: rect.width, height: rect.height))
        }
        return path
    }
}
