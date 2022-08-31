//
//  SymbolType.swift
//  iOSDCJapan2022LogoLikeSFSymbols
//
//  Created by littleossa
//

import SwiftUI

enum SymbolType: String, Identifiable, CaseIterable {
    case green
    case orange
    case blue
    case punk
    
    var id: String { self.rawValue }
    
    var configuration: SymbolAppearance {
        switch self {
        case .green:
            return SymbolAppearance(color: .green,
                                sizeMagnification: 0.26,
                                offsetXMagnification: -0.09,
                                offsetYMagnification: 0.14)
        case .orange:
            return SymbolAppearance(color: .orange,
                                sizeMagnification: 0.2,
                                offsetXMagnification: 0.07,
                                offsetYMagnification: -0.19)
        case .blue:
            return SymbolAppearance(color: .blue,
                                sizeMagnification: 0.17,
                                       offsetXMagnification: 0.25,
                                offsetYMagnification: 0.086)
        case .punk:
            return SymbolAppearance(color: .pink,
                                sizeMagnification: 0.11,
                                offsetXMagnification: -0.18,
                                offsetYMagnification: -0.15)
        }
    }
    
    struct SymbolAppearance {
        let color: Color
        let sizeMagnification: CGFloat
        let offsetXMagnification: CGFloat
        let offsetYMagnification: CGFloat
    }
}
