//
//  albumDetail.swift
//  147ebook
//
//  Created by User20 on 2020/10/16.
//

import SwiftUI

struct albumDetail: View {
    let album: Album
    var body: some View {
        VStack{
            
            Image(album.name)
                .resizable()
                .scaleEffect()
                .frame(width:300,height: 300)
                .clipped()
                .padding()
            
            
            ScrollView {
                VStack {
                    Text(album.detail)
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .frame(width:4*UIScreen.main.bounds.width/5)
                        .lineSpacing(15)
                        .cornerRadius(20)
                        .font(.system(size: 28))

                    }
                Spacer()
            }
            .padding()
            

            
        }
        .offset(y: 50)
        .padding()
        .lineLimit(nil)
        .navigationBarTitle(album.name, displayMode: .inline)
        .frame(width: UIScreen.main.bounds.width)
        .background(LinearGradient(gradient: Gradient(colors: [Color.white,Color(red: 255/255, green: 241/255, blue: 208/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        
        
    
    }
}

struct albumDetail_Previews: PreviewProvider {
    static var previews: some View {
        albumDetail(album: Album(name:"Got it?",time:"2014/01/20",detail:"1. Hello（여보세요)\n2. Girls Girls Girls\n3. I Like You(난 니가 좋아)\n4. Follow Me(따라와)\n5. Like Oh\n6. Playground"))
    }
}
