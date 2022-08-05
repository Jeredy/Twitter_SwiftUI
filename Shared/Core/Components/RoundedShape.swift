//
//  RoundedShape.swift
//  Twitter_SwiftUI (iOS)
//
//  Created by André Almeida on 2022-08-04.
//

import SwiftUI

struct RoundedShape: Shape {
    var corners: UIRectCorner
    
    func path(in rect:CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 80, height: 80))
        
        return Path(path.cgPath)
    }
}
