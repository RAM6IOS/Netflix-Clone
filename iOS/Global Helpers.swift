//
//  Global Helpers.swift
//  Netflix Clone
//
//  Created by MAC on 23/8/2021.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id:UUID().uuidString , name: "Dark", thumbeailURl: URL(string:"https://picsum.photos/200/301")!, categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"])
let exampleMovie2 = Movie(id:UUID().uuidString , name: "Travelers", thumbeailURl: URL(string:"https://picsum.photos/200/301")!, categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"])
let exampleMovie3 = Movie(id:UUID().uuidString , name: "Community", thumbeailURl: URL(string:"https://picsum.photos/200/301")!, categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"] )
let exampleMovie4 = Movie(id:UUID().uuidString , name: "Alone", thumbeailURl: URL(string:"https://picsum.photos/200/301")!, categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"])
let exampleMovie5 = Movie(id:UUID().uuidString , name: "After Life", thumbeailURl: URL(string:"https://picsum.photos/200/301")!, categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"])
let exampleMovie6 = Movie(id:UUID().uuidString , name: "Alone", thumbeailURl: URL(string:"https://picsum.photos/200/301")!, categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"])


let exampleMovies : [Movie] = [exampleMovie1, exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]
                                                                                

extension LinearGradient{
    static let balckOpacityGradient = LinearGradient(
        gradient: Gradient(colors:[Color.black.opacity(0.0),Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}
