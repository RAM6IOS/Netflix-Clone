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
}
