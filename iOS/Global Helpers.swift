//
//  Global Helpers.swift
//  Netflix Clone
//
//  Created by MAC on 23/8/2021.
//

import Foundation
import SwiftUI
let exampleVideoURl = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!
let exampleImageURL1 = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/104")!

var randomExampleImageURL : URL {
    return [exampleVideoURl,exampleImageURL2,exampleImageURL3].randomElement() ?? exampleImageURL1
}

let exampleTraiLer1 = Trailer(name: "Season 3 Trailer", videouURL: exampleVideoURl, thumbnailImageURL: exampleImageURL1)
let exampleTraiLer2 = Trailer(name: "Season 3 Trailer", videouURL: exampleVideoURl, thumbnailImageURL: exampleImageURL2)
let exampleTraiLer3 = Trailer(name: "Season 3 Trailer", videouURL: exampleVideoURl, thumbnailImageURL: exampleImageURL3)

let exampleTrrilers = [exampleTraiLer1,exampleTraiLer1 ,exampleTraiLer1]

let eposode1 = Episode(name:
                        "Beginnings",
                       season: 1,
                       episodeNumer: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/104",
                       description: "Six months after the disapperances,the police from a task force In 2052,Jonas learns most of Winden perished in an apocalyptic event",
                       length: 53,
                       videoUEL: exampleVideoURl)
let eposode2 = Episode(name:
                        "Dark Matter",
                       season: 1,
                       episodeNumer: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/104",
                       description: "Six months after the disapperances,the police from a task force In 2052,Jonas learns most of Winden perished in an apocalyptic event",
                       length: 54,
                       videoUEL: exampleVideoURl)
let eposode3 = Episode(name:
                        "Ghosts",
                       season: 1,
                       episodeNumer: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/104",
                       description: "Six months after the disapperances,the police from a task force In 2052,Jonas learns most of Winden perished in an apocalyptic event",
                       length: 54,
                       videoUEL: exampleVideoURl)
let eposode4 = Episode(name:
                        "Ghosts",
                       season: 2,
                       episodeNumer: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/104",
                       description: "Six months after the disapperances,the police from a task force In 2052,Jonas learns most of Winden perished in an apocalyptic event",
                       length: 54,
                       videoUEL: exampleVideoURl)
let eposode5 = Episode(name:
                        "Ghosts",
                       season: 2,
                       episodeNumer: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/104",
                       description: "Six months after the disapperances,the police from a task force In 2052,Jonas learns most of Winden perished in an apocalyptic event",
                       length: 54,
                       videoUEL: exampleVideoURl)
let eposode6 = Episode(name:
                        "Ghosts",
                       season: 2,
                       episodeNumer: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/104",
                       description: "Six months after the disapperances,the police from a task force In 2052,Jonas learns most of Winden perished in an apocalyptic event",
                       length: 54,
                       videoUEL: exampleVideoURl)

var allExamleEpisode = [eposode1,eposode2,eposode3,eposode4,eposode5,eposode6]


let exampleMovie1 = Movie(id:UUID().uuidString ,
                          name: "Dark", thumbeailURl: URL(string:"https://picsum.photos/200/301")!,
                          categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"],yer: 2020 ,
                          rating:"TV-MA",numberOfSeasons: 1 , promostionHeadline: "New episodes coming soon",
                          creators:"Barn bo Odan , Masucci Triebel",cast:"Louis Hofmann ,Oliver Masucci , jordis Triebel",
                          defaulEpisodeInfo: exampleeaEpisondeInfol,
                          
                          moreLiKeThisMvies: [ exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6], episode:allExamleEpisode, trailers: exampleTrrilers
                          )
let exampleMovie2 = Movie(id:UUID().uuidString , name: "Travelers",
                          thumbeailURl: URL(string:"https://picsum.photos/200/301")!,
                          categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"],yer: 2020 ,
                          rating:"TV-MA",numberOfSeasons: 2 ,promostionHeadline: "Best Rated Show",
                          creators:"Barn bo Odan , Masucci Triebel",cast:"Louis Hofmann ,Oliver Masucci , jordis Triebel",
                          defaulEpisodeInfo: exampleeaEpisondeInfol,
                          moreLiKeThisMvies: [], trailers: exampleTrrilers)
let exampleMovie3 = Movie(id:UUID().uuidString ,
                          name: "Community", thumbeailURl: URL(string:"https://picsum.photos/200/301")!,
                          categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"] ,yer: 2020 ,
                          rating:"TV-MA",numberOfSeasons: 3 , promostionHeadline: "New episodes coming soon",
                          creators:"Barn bo Odan , Masucci Triebel",cast:"Louis Hofmann ,Oliver Masucci , jordis Triebel",
                          defaulEpisodeInfo: exampleeaEpisondeInfol,
                          moreLiKeThisMvies: [], trailers: exampleTrrilers )
let exampleMovie4 = Movie(id:UUID().uuidString ,
                          name: "Alone",
                          thumbeailURl: URL(string:"https://picsum.photos/200/301")!,
                          categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"],yer: 2020 ,
                          rating:"TV-MA",numberOfSeasons: 4,promostionHeadline: "New episodes coming soon" ,
                          creators:"Barn bo Odan , Masucci Triebel",cast:"Louis Hofmann ,Oliver Masucci , jordis Triebel",
                          defaulEpisodeInfo: exampleeaEpisondeInfol,
                          moreLiKeThisMvies: [], trailers: exampleTrrilers )
let exampleMovie5 = Movie(id:UUID().uuidString ,
                          name: "After Life",
                          thumbeailURl: URL(string:"https://picsum.photos/200/301")!,
                          categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"],yer: 2020 ,
                          rating:"TV-MA",numberOfSeasons: 5 , promostionHeadline: "New episodes coming soon",
                          creators:"Barn bo Odan , Masucci Triebel",cast:"Louis Hofmann ,Oliver Masucci , jordis Triebel",
                          defaulEpisodeInfo: exampleeaEpisondeInfol,
                          moreLiKeThisMvies: [], trailers: exampleTrrilers )
let exampleMovie6 = Movie(id:UUID().uuidString
                          , name: "Alone",
                          thumbeailURl: URL(string:"https://picsum.photos/200/301")!,
                          categories: ["Dystopian","Excitng","Suspenful","Sci-Fi TV"],yer: 2020 ,
                          rating:"TV-MA",numberOfSeasons: 7,promostionHeadline: "Watch Season 6 Now",
                          creators:"Barn bo Odan , Masucci Triebel",cast:"Louis Hofmann ,Oliver Masucci , jordis Triebel",
                          defaulEpisodeInfo: exampleeaEpisondeInfol,
                          moreLiKeThisMvies: [], trailers: exampleTrrilers )


var  exampleMovies : [Movie] { [exampleMovie1, exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6].shuffled()
}

let exampleeaEpisondeInfol = CurrentEoisodInfo (episodName: "Beginnings", descriotion: "Six month after the disappeances ,the police from a task  In 2052 , Jonas learns that most of Winden perished in an apocalyptic event ", season: 2, episode: 1)

extension LinearGradient{
    static let balckOpacityGradient = LinearGradient(
        gradient: Gradient(colors:[Color.black.opacity(0.0),Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) ->CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
