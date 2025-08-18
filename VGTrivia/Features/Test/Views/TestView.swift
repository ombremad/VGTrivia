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
            VStack(spacing: 10) {
                AppForumHeader("Fake Forum with a significatively longer post name it's a bit of a mess though")
                Text("Lorem Ipsum")
                Button(action: { }) {
                    Text("Default button")
                }
                .buttonStyle(AppButton())
                Button(action: { }) {
                    Text("Default button")
                }
                .buttonStyle(AppButton(backgroundColor: .peach))
                Button(action: { }) {
                    Text("Default button")
                }
                .buttonStyle(AppButton(backgroundColor: .butter))
                Button(action: { }) {
                    Text("Default button")
                }
                .buttonStyle(AppButton(backgroundColor: .lavender))
                Button(action: { }) {
                    Text("Default button")
                }
                .buttonStyle(AppButton(backgroundColor: .minty))

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
