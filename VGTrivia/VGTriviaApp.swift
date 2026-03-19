//
//  VGTriviaApp.swift
//  VGTrivia
//
//  Created by Anne Ferret on 18/08/2025.
//

import SwiftUI

@main
struct VGTriviaApp: App {
  @State var vm = ViewModel()

  var body: some Scene {
    WindowGroup {
      HomeView()
        .environment(vm)
        .background(Color.background)
        .font(.appBody)
        .onAppear { vm.load() }
    }
  }
}
