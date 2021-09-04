//
//  CutomTabSwitcher.swift
//  CutomTabSwitcher
//
//  Created by MAC on 4/9/2021.
//

import SwiftUI

struct CutomTabSwitcher: View {
    var  tabs: [CustomTab ]
    
    var body: some View {
        VStack{
            ScrollView(.horizontal , showsIndicators: true){
                HStack{
                    ForEach(tabs , id :\.self){tab in
                        VStack{
                            Rectangle()
                                .frame(width: 100, height: 6)
                            Button(action:{
                                
                            },label:{
                                Text(tab.rawValue)
                                    .font(.system(size: 16 , weight : .bold))
                            })
                            
                        }
                    }
                }
            }
                Text("SELECTED VIEW")
                
            
                
            }
        .foregroundColor(.white)
    }
}
enum CustomTab : String {
    case episodes = "EPISOODES"
    case trailers = "TRAIERS & MORE"
    case more = "MORE LIKE"
}

struct CutomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CutomTabSwitcher(tabs:[.episodes,.trailers, .more])
        }
    }
}
