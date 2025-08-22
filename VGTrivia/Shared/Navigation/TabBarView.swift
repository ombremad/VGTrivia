//
//  TabBarView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 18/08/2025.
//

import SwiftUI

struct TabBarView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    
    var body: some View {
        TabView {
            RoundView().environment(triviaViewModel)
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Round")
                }
            TestView().environment(triviaViewModel)
                .tabItem {
                    Image(systemName: "testtube.2")
                    Text("Test page")
                }
            Text("Themes")
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Themes")
                }
            Text("My profile")
                .tabItem {
                    Image(systemName: "person.text.rectangle")
                    Text("My profile")
                }
        }
    }
}

#Preview {
    TabBarView()
        .font(.appBody)
        .environment(TriviaViewModel())
}
