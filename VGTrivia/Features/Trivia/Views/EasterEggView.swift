//
//  EasterEggView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 01/09/2025.
//

import SwiftUI
import AVFoundation

struct EasterEggView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    @Binding var navigationPath: NavigationPath
    
    // Music
    @State private var musicPlayer = MusicPlayer()
    func playMusic() {
        var music: AVAudioPlayer?
        if let url = Bundle.main.url(forResource: "Music/sound", withExtension: "m4a") {
            do {
                music = try AVAudioPlayer(contentsOf: url)
                music?.prepareToPlay()
                music?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found.")
        }
    }

    // Animations
    @State private var offset: CGFloat = 700
    @State private var colorIndex = 0
    private let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .indigo, .purple]
    private func playAnimations() {
        textBounce()
        cycleColors()
    }
    private func textBounce() {
        offset = 700
        withAnimation(.bouncy(duration: 0.4, extraBounce: 0.65)) {
            offset = 0
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
        
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 16) {
                Text("It's a secret\nto everybody.")
                    .font(.appTitle)
                    .multilineTextAlignment(.center)
                    .offset(y: offset)
            }
            Spacer()
            Button(action: {
                navigationPath = NavigationPath()
            }) {
                Text("Back")
            }
            .buttonStyle(TriviaButton(backgroundColor: .pearl))
        }
            .padding()
            .navigationBarBackButtonHidden()
            .background(colors[colorIndex])
            .foregroundStyle(.pearl)
            .onAppear {
                musicPlayer.playSound()
                playAnimations()
            }
    }
}


#Preview {
    EasterEggView(navigationPath: .constant(NavigationPath()))
        .environment(TriviaViewModel())
        .font(.appBody)
}
