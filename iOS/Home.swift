//
//  Home.swift
//  Netflix Clone
//
//  Created by MAC on 23/8/2021.
//

import SwiftUI

struct Home: View {
    var vm = HomeVM()
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
           
            ScrollView( showsIndicators: false){
                LazyVStack {
                    TopMovie(movie: exampleMovie1)
                        .padding(.top,-110)
                    
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
                                            
                                    }
                                }
                            }
                        
                        }
                    }
                    .foregroundColor(.white)
                }
 
                        
                        
                                  }
 
                           
        }

        
            }
    }
    



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
