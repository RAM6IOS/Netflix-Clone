//
//  HomeVM.swift
//  HomeVM
//
//  Created by MAC on 26/8/2021.
//

import Foundation

class HomeVM:ObservableObject{
    @Published var movies : [String:[Movie]] = [:]
    
    public var allCategores: [String]{
         movies.keys.map({String($0)})
    }
    
     
    public func getMovie(forCat cat: String)-> [Movie]{
        return movies[cat] ?? []
    }
    
    
    init(){
        setupMovies()
    }
    
    func setupMovies(){
        movies["Trending Now"] = exampleMovies
        movies["Popler"] = exampleMovies
        movies["Popler2"] = exampleMovies
    }
}
