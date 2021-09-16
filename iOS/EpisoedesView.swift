//
//  EpisoedesView.swift
//  EpisoedesView
//
//  Created by MAC on 14/9/2021.
//

import SwiftUI

struct EpisoedesView: View {
    var episodes:[Episode]
    @Binding var showSeasonPicKer:Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season:Int) ->[Episode]{
        return episodes.filter({$0.season == season})
    }
    
    var body: some View {
        VStack( spacing: 14){
            HStack{
                Button(action: {
                    self.showSeasonPicKer = true
                }, label: {
                    Group{
                       Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                Spacer()
                
            }
            ForEach(getEpisodes(forSeason: selectedSeason)){ episodes in
                VStack(alignment: .leading){
                    HStack{
                        VideoPreviewImage(imageURl: episodes.thumbnailURL, videoURL: episodes.videoUEL)
                            .frame(width: 120, height: 70 )
                            .clipped()
                        VStack(alignment: .leading){
                            Text("\(episodes.episodeNumer).\(episodes.name)")
                                .font(.system(size: 16))
                            Text("\(episodes.length)")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                            
                        }
                        Spacer()
                        Image(systemName: "arrow.down.to.line")
                            .font(.system(size:20))
                            .foregroundColor(.white)
                        
                        
                    }
                    
                    Text(episodes.description)
                        .font(.system(size: 17))
                        .lineLimit(3)
                }
                .padding(.bottom,20)
                
            }
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct EpisoedesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            EpisoedesView(episodes: allExamleEpisode, showSeasonPicKer: .constant(false), selectedSeason: .constant(1))
        }
    }
}
