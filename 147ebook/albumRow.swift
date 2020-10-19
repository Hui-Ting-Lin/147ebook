//
//  albumRow.swift
//  147ebook
//
//  Created by User20 on 2020/10/16.
//

import SwiftUI

struct albumRow: View {
    
    let album: Album
    var body: some View {
        HStack{
            Image(album.name)
                .resizable()
                .scaleEffect()
                .frame(width: 80, height: 80)
                .clipped()
            VStack(alignment: .leading){
                Text(album.name)
                    .foregroundColor(.black)
                Text(album.time)
                    .foregroundColor(.black)
            }
            Spacer()
        }
        
        .background(LinearGradient(gradient: Gradient(colors: [Color.white,Color(red: 252/255  , green: 213/255, blue: 206/255)]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(20)
    }
    
}



struct albumRow_Previews: PreviewProvider {
    static var previews: some View {
        albumRow(album: Album(name:"Got it?",time:"2014/01/20",song:["Hello（여보세요)","Girls Girls Girls","I Like You(난 니가 좋아)","Follow Me(따라와)","Like Oh","Playground"]))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
