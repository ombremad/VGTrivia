//
//  MusicPlayer.swift
//  VGTrivia
//
//  Created by Anne Ferret on 01/09/2025.
//

import SwiftUI
import AVFoundation

@Observable
class MusicPlayer {
    var player: AVAudioPlayer?

    func playSound() {
        if let url = Bundle.main.url(forResource: "calamari", withExtension: "m4a") {
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.prepareToPlay()
                player?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found.")
        }
    }
}
