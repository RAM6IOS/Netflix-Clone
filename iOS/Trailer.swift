//
//  Trailer.swift
//  Trailer
//
//  Created by MAC on 5/9/2021.
//

import Foundation

struct Trailer : Identifiable , Hashable {
    var id : String = UUID().uuidString
    var name: String
    var videouURL : URL
    var thumbnailImageURL: URL
}
   
