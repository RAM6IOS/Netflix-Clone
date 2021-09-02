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
    
    var episode:[Episode]?
    var yer:Int
    var  rating: String
    var numberOfSeasons:Int?
    var promostionHeadline: String?
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
}
