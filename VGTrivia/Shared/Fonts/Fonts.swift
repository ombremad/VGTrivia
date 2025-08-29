//
//  Fonts.swift
//  VGTrivia
//
//  Created by Anne Ferret on 18/08/2025.
//

import SwiftUI

extension Font {
    static let appBody = Font.custom("MozillaTextVF-Regular", size: 15)
    static let appButton = Font.custom("MozillaTextVF-SemiBold", size: 18)
    static let appButtonBig = Font.custom("MozillaHeadlineVF-SemiBold", size: 20)
    static let appTitle = Font.custom("MozillaHeadlineVF-ExpandedSemiBold", size: 26)
    static let appBigTitle = Font.custom("MozillaHeadlineVF-ExpandedBold", size: 42)
    static let cardContent = Font.custom("MozillaTextVF-Regular", size: 16)
    static let cardCallout = Font.custom("MozillaTextVF-SemiBold", size: 14)
    static let score = Font.custom("MozillaTextVF-SemiBold", size: 16)
    static let scoreBig = Font.custom("MozillaTextVF-SemiBold", size: 20)
}

#Preview {
    TestView()
        .font(.appBody)
}
