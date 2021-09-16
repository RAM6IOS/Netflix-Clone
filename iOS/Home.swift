//
//  Home.swift
//  Netflix Clone
//
//  Created by MAC on 23/8/2021.
//

import SwiftUI

struct Home: View {
    var vm = HomeVM()
    @State private var movieDeiToShow:Movie? = nil
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
           
            ScrollView( showsIndicators: false){
                LazyVStack {
                   TopRowButtons()
                    
                    
                    TopMovie(movie: exampleMovie1)
                        .padding(.top,-110)
                        .zIndex(-1)
                        
                    
                    ForEach(vm.allCategores, id:\.self) { Category in
                        VStack{
                        HStack{
                            Text(Category)
                                .font(.title2)
                            Spacer()
                            
                            
                        }
                            ScrollView(.horizontal,showsIndicators: false){
                                LazyHStack{
                                    ForEach(vm.getMovie(forCat: Category)){
                                       movie in
                                       StandardHomemovie(movie: movie)
                                            .frame(width: 140, height: 200)
                                            .padding(.horizontal,5)
                                            .onTapGesture(perform:  {
                                                movieDeiToShow = movie
                                            })
                                            
                                    }
                                }
                            }
                        
                        }
                    }
                    .foregroundColor(.white)
                }
 
                        
                        
                                  }
 
            if movieDeiToShow != nil {
                MoiveDetail(movie: movieDeiToShow!, movieDeiToShow: $movieDeiToShow)
                    .animation(.easeInOut)
                    .transition(.identity)
            }
                 }
        
            }
    }
    



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct TopRowButtons: View {
     
    var body: some View {
        HStack{
            Button(action:{
                
            },label:{
                Image("Netflix-Logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width:70)
            })
                .buttonStyle(PlainButtonStyle())
            
            Spacer()
            Button(action:{
                
            },label:{
                Text("TV Sows")
            })
                .buttonStyle(PlainButtonStyle())
            Spacer()
            Button(action:{
                
            },label:{
                Text("Moves")
            })
                .buttonStyle(PlainButtonStyle())
            Spacer()
            Button(action:{
                
            },label:{
                Text("My List")
            })
                .buttonStyle(PlainButtonStyle())
            
        }
        .foregroundColor(.white)
        .padding(.leading,10)
        .padding(.trailing,30)
        .background(LinearGradient(
            gradient: Gradient(colors:[Color.black.opacity(0.0),Color.black.opacity(0.95)]),
            startPoint: .top,
            endPoint: .bottom))
    }
}
