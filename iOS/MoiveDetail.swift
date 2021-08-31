  
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
            VStack{
                HStack{
                    Spacer()
                    Button (action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 20))
                    })
                }
                .padding(.horizontal,22)
                ScrollView(.vertical,showsIndicators: false){
                    VStack{
                        StandardHomemovie(movie: movie)
                            .frame(width: .infinity )
                        
                        MovieInfoSubhadline()
                    }
                    
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
    var body: some View {
        HStack{
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text("MOvie YEAR")
            Text("Rating")
            Text("seaons")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
