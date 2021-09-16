//
//  TrailerList.swift
//  TrailerList
//
//  Created by MAC on 10/9/2021.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [Trailer]
    var body: some View {
        VStack(alignment: .leading ){
            ForEach(trailers){trailer in
                VStack{
                    VideoPreviewImage(imageURl: trailer.thumbnailImageURL, videoURL: trailer.videouURL)
                    Text(trailer.name)
                        .font(.headline)
                }
                .foregroundColor(.white)
                .padding(.bottom , 30)
                
            }
        }
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
        TrailerList(trailers:exampleTrrilers)
        }
    }
}
