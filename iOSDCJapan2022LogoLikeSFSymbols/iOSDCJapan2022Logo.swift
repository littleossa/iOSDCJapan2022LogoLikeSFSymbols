//
//  iOSDCJapan2022Logo.swift
//  iOSDCJapan2022LogoLikeSFSymbols
//
//  Created by littleossa
//

import SwiftUI

struct iOSDCJapan2022Logo: View {
    
    var body: some View {
        
        GeometryReader { proxy in
            
            let baseSize = baseSize(calculateFrom: proxy.size.width,
                                    and: proxy.size.height)
            
            ZStack {
                ForEach(SymbolType.allCases) { type in
                    let appearance = type.configuration
                    
                    iOSDCJapan2022Symbol(size: baseSize * appearance.sizeMagnification,
                                         color: appearance.color)
                    .offset(x: baseSize * appearance.offsetXMagnification,
                            y: baseSize * appearance.offsetYMagnification)
                }
                
                Image(systemName: "circle.square.fill")
                    .foregroundColor(.white)
                    .font(.system(size: baseSize,
                                  weight: .regular,
                                  design: .default))
            }
            .position(x: proxy.frame(in: .local).midX,
                      y: proxy.frame(in: .local).midY)
        }
    }
    
    private func baseSize(calculateFrom screenWidth: CGFloat, and screeHeight: CGFloat) -> CGFloat {
        
        let baseLength = screenWidth < screeHeight ? screenWidth : screeHeight
        return baseLength * 1.5
    }
}

struct iOSDCJapan2022Logo_Previews: PreviewProvider {
    static var previews: some View {
        iOSDCJapan2022Logo()
    }
}
