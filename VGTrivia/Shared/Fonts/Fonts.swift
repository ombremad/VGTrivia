//
//  Fonts.swift
//  VGTrivia
//
//  Created by Anne Ferret on 18/08/2025.
//

import SwiftUI

extension Font {
    static let appBody = Font.custom("MozillaTextVF-Regular", size: 16)
    static let appButton = Font.custom("MozillaTextVF-SemiBold", size: 18)
    static let questionTitle = Font.custom("MozillaHeadlineVF-ExpandedSemiBold", size: 32)
    static let questionContent = Font.custom("MozillaTextVF-Regular", size: 18)
    static let score = Font.custom("MozillaTextVF-SemiBold", size: 16)
    static let scoreBig = Font.custom("MozillaTextVF-SemiBold", size: 20)
}

#Preview {
    TestView()
        .font(.appBody)
}
