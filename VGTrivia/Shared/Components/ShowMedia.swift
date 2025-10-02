//
//  ShowMedia.swift
//  VGTrivia
//
//  Created by Anne Ferret on 01/10/2025.
//

import SwiftUI

struct ShowMedia: View {
    @State var media: DisplayMedia?
    
    var body: some View {
        if let m = media,
           let url = URL(string: m.url) {
            switch m.type {
                case .image:
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
            }
        } else {
            EmptyView()
        }
    }
}

#Preview {
    ShowMedia(media: DisplayMedia(type: .image, url: "https://github.com/ombremad/VGTrivia/blob/multimedia_questions/VGTrivia_assets/crafting_table.webp?raw=true"))
}
