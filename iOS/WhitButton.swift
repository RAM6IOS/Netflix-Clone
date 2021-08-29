//
//  WhitButton.swift
//  WhitButton
//
//  Created by MAC on 29/8/2021.
//

import SwiftUI

struct WhitButton: View {
    var text:String
    var imageName:String
    var action:() -> Void
    var body: some View {
        Button(action:action , label:{
            HStack{
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
            }
            .padding(.vertical)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(3.0)
        }
        )
    }
}

struct WhitButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            WhitButton(text:"Play" , imageName: "play.fill"){
                print("Tapped")
            }
        }
    }
}
