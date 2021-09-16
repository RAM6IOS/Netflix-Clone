//
//  CutomTabSwitcher.swift
//  CutomTabSwitcher
//
//  Created by MAC on 4/9/2021.
//

import SwiftUI
import Algorithms

struct CutomTabSwitcher: View {
    var moves : Movie
    
    
    @State private var currentTab: CustomTab = .episodes
    var  tabs: [CustomTab ]
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason:Int
 
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont:.systemFont(ofSize: 16, weight: .bold))
    }
    var body: some View {
        VStack{
            ScrollView(.horizontal , showsIndicators: true){
                HStack( spacing: 30){
                    ForEach(tabs , id :\.self){tab in
                        VStack{
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab ==  currentTab ? Color.red : Color.clear)
                            
                        Button(action:{
                            currentTab = tab
                                
                            },label:{
                                Text(tab.rawValue)
                                    .font(.system(size: 16 , weight:.bold))
                                    .foregroundColor(tab ==  currentTab ? Color.white : Color.gray)
                            })
                                .buttonStyle(PlainButtonStyle())
                                .frame(width: widthForTab(tab), height: 30)

                        }
                    }
                }
            }
                
                
            switch currentTab {
            case .episodes:
                EpisoedesView(episodes: moves.episode ?? [], showSeasonPicKer: $showSeasonPicker, selectedSeason: $selectedSeason)
            case .trailers:
                TrailerList(trailers: moves.trailers)
            case .more:
                MoreLikeThis(movies: moves.moreLiKeThisMvies)
                
            }
                
            }
        .foregroundColor(.white)
    }
}
enum CustomTab : String {
    case episodes = "EPISOODES"
    case trailers = "TRAIERS & MORE"
    case more = "MORE LIKE"
}

struct CutomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CutomTabSwitcher(moves: exampleMovie1 , tabs:[.episodes,.trailers, .more],showSeasonPicker: .constant(false) , selectedSeason: .constant(1))
        }
    }
}
