//
//  VGTriviaApp.swift
//  VGTrivia
//
//  Created by Anne Ferret on 18/08/2025.
//

import SwiftUI

@main
struct VGTriviaApp: App {
    @State var triviaViewModel = TriviaViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
            .environment(triviaViewModel)
            .background(Color.background)
            .font(.appBody)
        }
    }
}
