//
//  Movie.swift
//  Netflix Clone
//
//  Created by MAC on 23/8/2021.
//

import Foundation


struct Movie :Identifiable{
    var id : String
    var name : String
    var thumbeailURl : URL
    
    var categories:[String]
    
   
    var yer:Int
    var  rating: String
    var numberOfSeasons:Int?
    var promostionHeadline: String?
    var creators: String
    var cast : String
    
    var currentEpisode:CurrentEoisodInfo?
    var defaulEpisodeInfo:CurrentEoisodInfo
    var moreLiKeThisMvies: [Movie]
    
    var episode:[Episode]?
    
    var trailers: [Trailer]
    var numberOfeasonsDisplay:String {
        if let num = numberOfSeasons {
            if num == 1 {
              
                    return "1 season "
                    
                }else {
                    return "\(num) seasons"
                    
                }
            
        }
    return ""
        
    }
    var episodeInfoDisplay:String{
        if let current = currentEpisode {
            return "$\(current.season):E\(current.episode) \(current.episodName)"
        }else{
            return "$\(defaulEpisodeInfo.season):E\(defaulEpisodeInfo.episode) \(defaulEpisodeInfo.episodName)"
        }    }
    
    var episodeDescriptionDisplay : String {
        if let current = currentEpisode {
            return current.descriotion
        }else{
            return defaulEpisodeInfo.descriotion
        }
    }
    
}

struct CurrentEoisodInfo:Hashable,Equatable {
    var episodName: String
    var descriotion: String
    var season: Int
    var episode: Int
}
