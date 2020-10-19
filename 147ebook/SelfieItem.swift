//
//  SelfieItem.swift
//  147ebook
//
//  Created by User20 on 2020/10/19.
//

import SwiftUI

struct SelfieItem: View {
    var selfieName:String="JB"
    var body: some View {        
        
        VStack{
            Image(selfieName + "-" + String(1))
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Text(selfieName)
                .foregroundColor(.blue)
                .offset(y:-5 )
        }
        .offset(y:15 )
        //.background(Color(red: 255/255, green: 227/255, blue: 224/255))
            
        
    }
}

struct SelfieItem_Previews: PreviewProvider {
    static var previews: some View {
        SelfieItem()
    }
}
