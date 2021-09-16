//
//  SwifUIVidenView.swift
//  SwifUIVidenView
//
//  Created by MAC on 5/9/2021.
//

import SwiftUI
import AVKit



struct SwifUIVidenView: View {
    var url:URL
    private var player:AVPlayer{
        AVPlayer(url:url)
    }
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwifUIVidenView_Previews: PreviewProvider {
    static var previews: some View {
        SwifUIVidenView(url: exampleVideoURl)
    }
}
