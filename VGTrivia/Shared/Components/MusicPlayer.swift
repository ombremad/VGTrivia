//
//  MusicPlayer.swift
//  VGTrivia
//
//  Created by Anne Ferret on 01/10/2025.
//

import AVKit

class MusicPlayer {
    var player: AVAudioPlayer?

    func playSound(url: URL) {
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
