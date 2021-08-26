//
//  StandardHomemovie.swift
//  Netflix Clone
//
//  Created by MAC on 23/8/2021.
//

import SwiftUI
import Kingfisher



struct StandardHomemovie: View {
    var movie : Movie
    var body: some View {
        VStack{
        
       
        KFImage(movie.thumbeailURl)
                .resizable()
        }
    }
}

struct StandardHomemovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomemovie(movie:exampleMovie1)
    }
}
