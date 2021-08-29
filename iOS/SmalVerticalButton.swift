//
//  SmalVerticalButton.swift
//  SmalVerticalButton
//
//  Created by MAC on 28/8/2021.
//

import SwiftUI

struct SmalVerticalButton: View {
    var text:String
    var isOnImage:String
    var isOffImage:String
    var isON:Bool
    var imageName:String{
        if isON{
        return isOffImage
        }else{
            return isOffImage
        }
    }
    var action: () -> Void
   
    var body: some View {
        Button(action: {
            action()
            
        },label: {
            VStack{
                Image(systemName:imageName)
                    .foregroundColor(.white)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .bold()
                }
            }
        
        )
    }
}

struct SmalVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SmalVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "checKmark", isON: true ){
                print("Tapped")
            }
            
        }
    }
}
