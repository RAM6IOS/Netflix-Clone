//
//  WhitButton.swift
//  WhitButton
//
//  Created by MAC on 29/8/2021.
//

import SwiftUI

struct PlayButton: View {
    var text:String
    var imageName:String
    var backGroundColor: Color = Color.white
    
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
            .foregroundColor(backGroundColor == .white ? .black: .white)
            .background(backGroundColor)
            .cornerRadius(3.0)
        }
        )
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            PlayButton(text:"Play" , imageName: "play.fill",backGroundColor: .white){
                print("Tapped")
            }
        }
    }
}
