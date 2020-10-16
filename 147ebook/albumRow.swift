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
                Text(album.time)
            }
            Spacer()
        }
    }
}



struct albumRow_Previews: PreviewProvider {
    static var previews: some View {
        albumRow(album: Album(name:"Got it?",time:"2014/01/20",detail:""))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
