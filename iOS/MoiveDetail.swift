  
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
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
           
                
                ScrollView(.vertical,showsIndicators: false){
                  
                    LazyVStack {
                   
         
                        
                        HStack{
                          
                            Spacer()
                            Button(action:{
                                
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
                    }
                        
                       
                    }
                    
                
            
            
        
        
            
    }
}

struct MoiveDetail_Previews: PreviewProvider {
    static var previews: some View {
        MoiveDetail(movie: exampleMovie1)
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
