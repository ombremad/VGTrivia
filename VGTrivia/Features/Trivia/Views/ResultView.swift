//
//  ResultView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 29/08/2025.
//

import SwiftUI

struct ResultView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    @Binding var navigationPath: NavigationPath
    
    var body: some View {
        Button(action: {
            navigationPath = NavigationPath()
        }) {
            Text("Return to home")
        }
        .buttonStyle(TriviaButton())
    }
}

//#Preview {
//    ResultView()
//}
