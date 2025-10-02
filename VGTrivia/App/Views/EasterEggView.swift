//
//  EasterEggView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 01/09/2025.
//

import SwiftUI
import AVKit

struct EasterEggView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    @Binding var navigationPath: NavigationPath
    
    @State private var musicPlayer = MusicPlayer()

    // Animation values
    @State private var textOffset: CGFloat = 700
    @State private var textRotationZ: CGFloat = 0
    @State private var textRotationY: CGFloat = 0
    @State private var textScaling: CGFloat = 1
    @State private var colorIndex = 0
    private let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple]
    
    // Animation functions
    private func playAnimations() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            textBounce()
        }
        cycleColors()
        DispatchQueue.main.asyncAfter(deadline: .now() + 13.7) {
            textDance()
        }
    }
    private func textBounce() {
        textOffset = 700
        withAnimation(.bouncy(duration: 0.4, extraBounce: 0.65)) {
            textOffset = 0
        }
    }
    private func textDance() {
        withAnimation(.easeInOut(duration: 0.72)) {
            textOffset = 30
        }
        withAnimation(.easeInOut(duration: 0.72).repeatForever(autoreverses: true)) {
            textOffset = -40
        }
        withAnimation(.easeInOut(duration: 0.4)) {
            textRotationY = -45
        }
        withAnimation(.easeInOut(duration: 0.4).repeatForever(autoreverses: true)) {
            textRotationY = 32
        }
        withAnimation(.easeInOut(duration: 1.3)) {
            textRotationZ = -12
        }
        withAnimation(.easeInOut(duration: 1.3).repeatForever(autoreverses: true)) {
            textRotationZ = 16
        }
        withAnimation(.easeInOut(duration: 1)) {
            textScaling = 0.9
        }
        withAnimation(.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
            textScaling = 1.8
        }
    }
    private func cycleColors() {
        withAnimation(.linear(duration: 0.2)) {
            colorIndex = (colorIndex + 1) % colors.count
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            cycleColors()
        }
    }
    
    // Extracted views
    private func secretText() -> some View {
        Text("It's a secret\nto everybody.")
            .font(.appTitle)
            .foregroundStyle(.pearl)
            .multilineTextAlignment(.center)
            .offset(y: textOffset)
            .rotation3DEffect(.degrees(textRotationY), axis: (x: 0, y:1, z:0))
            .rotation3DEffect(.degrees(textRotationZ), axis: (x: 0, y:0, z:1))
            .scaleEffect(textScaling)
            .onTapGesture {
                textBounce()
            }
    }
    private func backButton() -> some View {
        Button(action: {
            musicPlayer.player?.stop()
            navigationPath = NavigationPath()
        }) {
            Text("Back")
        }
        .buttonStyle(TriviaButton(backgroundColor: .pearl))
        .frame(height: 60)
    }
        
    var body: some View {
        VStack {
            Spacer()
            secretText()
            Spacer()
            backButton()
        }
            .padding()
            .navigationBarBackButtonHidden()
            .statusBarHidden()
            .background(colors[colorIndex])
            .onAppear {
//                musicPlayer.playSound()
                playAnimations()
            }
    }
}

#Preview {
    EasterEggView(navigationPath: .constant(NavigationPath()))
        .environment(TriviaViewModel())
        .font(.appBody)
}
