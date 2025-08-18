//
//  TabBarView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 18/08/2025.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            TestView()
                .tabItem {
                    Image(systemName: "testtube.2")
                    Text("TESTPAGE")
                }
            Text("Trending")
                .tabItem {
                    Image(systemName: "star.square.on.square")
                    Text("Trending")
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
}
