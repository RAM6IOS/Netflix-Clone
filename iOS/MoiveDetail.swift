  
//
//  MoiveDetail.swift
//  MoiveDetail
//
//  Created by MAC on 31/8/2021.
//

import SwiftUI
import CoreData
import Kingfisher

struct MoiveDetail: View {
    var movie: Movie
    @State private var showSeasonPicKer = false
    @State private var selectedSeason = 1
    @Binding var movieDeiToShow:Movie?
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
           
                
                ScrollView(.vertical,showsIndicators: false){
                  
                    LazyVStack {
                   
         
                        
                        HStack{
                          
                            Spacer()
                            Button(action:{
                                movieDeiToShow = nil
                            },label:{
                                Image(systemName: "xmark.circle")
                                    .background(Color.white)
                                    .font(.system(size: 28))
                                    .foregroundColor(.black)
                                    .cornerRadius(.infinity)
                                    
                                   
                                    
                            })
                                
                            
                        }
                        .padding(.horizontal)
                        
                        
                        
                       
                        
                   
                        StandardHomemovie(movie: movie)
                            .frame(width: .infinity )
                            .padding(.top,-70)
                            .zIndex(-1)
                    }
                    MovieInfoSubhadline(movie: movie)
                    if movie.promostionHeadline != nil {
                        Text(movie.promostionHeadline!)
                            .bold()
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    PlayButton(text: "Play", imageName: "Play.fill",backGroundColor: .red){
                        
                    }
                    CurrentEpisodeInformation(movie:movie)
                    CastInfo(movie: movie)
                   
                    HStack(spacing:60){
                        SmalVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isON: true){
                            
                        }
                        SmalVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isON: true){
                            
                        }
                        SmalVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isON: true){
                            
                        }
                        Spacer()
                    }
                    .padding(.leading,20)
                    CutomTabSwitcher(moves: movie, tabs: [.episodes,.trailers,.more], showSeasonPicker: $showSeasonPicKer, selectedSeason: $selectedSeason)
                    
                    
                    
                    
                    
                }
                .padding(.horizontal , 10)
            
            if showSeasonPicKer {
                Color.black.opacity(0.9)
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 40){
                    Spacer()
                    ForEach(0..<(movie.numberOfSeasons ?? 0)){ season in
                        Button(action: {
                            self.selectedSeason = season + 1
                            self.showSeasonPicKer = true
                            
                        }, label: {
                            Text("Season \(season + 1)")
                                .foregroundColor(selectedSeason == season + 1 ? .white : .gray)
                                .bold()
                                .font(selectedSeason == season + 1 ? .title : .title2)
                        })
                        
                    }
                    Spacer()
                    Button(action: {
                        self.showSeasonPicKer = false
                    }, label: {
                        Image(systemName: "x.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                    })
                        .padding(.bottom,30)
                }
                
            }
                       
                    }
        .foregroundColor(.white)
        
                    
                
            
            
        
        
            
    }
}

struct MoiveDetail_Previews: PreviewProvider {
    static var previews: some View {
        MoiveDetail(movie: exampleMovie1, movieDeiToShow: .constant(nil))
    }
}


struct MovieInfoSubhadline
: View {
    var movie: Movie
    var body: some View {
        HStack( spacing: 20){
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.yer))
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfeasonsDisplay)
            
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    var body: some View {
        
            
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size:12))
                .bold()
        }.frame(width: 60, height: 20 )
        
        
    }
}

struct  CastInfo: View {
    var movie: Movie
    var body: some View {
        VStack( spacing: 3){
            HStack{
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            HStack{
                Text("Creators: \(movie.creators)")
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical , 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    var body: some View {
        Group{
            HStack{
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer(
                )
            }
            .padding(.vertical , 4)
            HStack{
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
