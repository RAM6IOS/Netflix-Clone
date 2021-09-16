//
//  Episode.swift
//  Episode
//
//  Created by MAC on 2/9/2021.
//

import Foundation

struct Episode : Identifiable{
    var id = UUID().uuidString
    var name :String
    var season: Int
    var episodeNumer:Int 
    var  thumbnailImageURLString:String
    var description:String
    var length:Int
    var videoUEL: URL
    
    var thumbnailURL : URL {
         return URL(string: thumbnailImageURLString)!
    }
}
