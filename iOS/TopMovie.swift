//
//  TopMovie.swift
//  TopMovie
//
//  Created by MAC on 28/8/2021.
//

import SwiftUI
import Kingfisher

struct TopMovie: View {
    var movie : Movie
    func isCategoryLast(_ cat: String) -> Bool{
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: cat){
            if index + 1 != catCount {
                return false
                
            }
        }
        return true
    }
    
    var body: some View {
        ZStack{
   
          
            KFImage(movie.thumbeailURl)
                    .resizable()
                    .scaledToFill()
                    .clipped()
            VStack{
                Spacer()
                HStack{
                    ForEach(movie.categories , id: \.self){caregori in
                        HStack{
                        Text(caregori)
                            if !isCategoryLast(caregori) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.red)
                                .font(.system(size: 5))
                            }
                        }
                        
                        
                    }
                }
                HStack{
                    Spacer()
                    SmalVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isON: true){
                        
                    }
                    Spacer()
                    PlayButton(text:"Play" , imageName: "play.fill"){
                        
                    }
                    .frame(width: 120)
                    Spacer()
                    SmalVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isON: true){
                        
                    }
                    Spacer()
                }
                
                
            }
            .background(LinearGradient.balckOpacityGradient)
            
        
        }
        .foregroundColor(.white)
    }
}

struct TopMovie_Previews: PreviewProvider {
    static var previews: some View {
        TopMovie(movie: exampleMovie1)
    }
}
