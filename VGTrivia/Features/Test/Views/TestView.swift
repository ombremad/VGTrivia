//
//  TestView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 18/08/2025.
//

import SwiftUI

struct TestView: View {
        
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Button(action: { }) {
                    HStack {
                        Image(systemName: "gamecontroller.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 40)
                        Text("VGTrivia")
                    }
                }
                .buttonStyle(BigTitleButton())

                Button(action: { }) {
                    Text("Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Ipsum")
                }
                .buttonStyle(TriviaButton())
                Button(action: { }) {
                    Text("Default button")
                }
                .buttonStyle(TriviaButton(backgroundColor: .peach))
                Button(action: { }) {
                    Text("Default button")
                }
                .buttonStyle(TriviaButton(backgroundColor: .butter))
                Button(action: { }) {
                    Text("Default button")
                }
                .buttonStyle(TriviaButton(backgroundColor: .lavender))
                Button(action: { }) {
                    Text("Default button")
                }
                .buttonStyle(TriviaButton(backgroundColor: .minty))
                Text("Lorem Ipsum")
            }
            .padding()
        }
    }
}

#Preview {
    TestView()
        .background(Color.background)
        .font(.appBody)
}
