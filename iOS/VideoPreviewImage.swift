//
//  VideoPreviewImage.swift
//  VideoPreviewImage
//
//  Created by MAC on 5/9/2021.
//

import SwiftUI
import Kingfisher
struct VideoPreviewImage: View {
    var imageURl:URL
    var videoURL:URL
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack{
            KFImage(imageURl)
                .resizable()
                .aspectRatio( contentMode: .fill)
            Button(action:{
                showingVideoPlayer  = true            },label:{
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            }
            )
                .sheet(isPresented: $showingVideoPlayer, content: { SwifUIVidenView(url: videoURL)})
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageURl:exampleImageURL1, videoURL:exampleVideoURl )
    }
}
