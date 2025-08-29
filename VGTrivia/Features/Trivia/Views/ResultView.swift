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
        VStack {
            Spacer()
                Text("Your score")
                .font(.appTitle)
            HStack {
                Text(triviaViewModel.score.description)
                Text("/")
                Text(triviaViewModel.questionPool.count.description)
            }
            Spacer()
            Button(action: {
                navigationPath = NavigationPath()
            }) {
                Text("End game")
            }
            .buttonStyle(TriviaButton(backgroundColor: .butter))
        }
        .padding()
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ResultView(navigationPath: .constant(NavigationPath()))
        .environment(TriviaViewModel())
        .background(Color.background)
        .font(.appBody)
}
