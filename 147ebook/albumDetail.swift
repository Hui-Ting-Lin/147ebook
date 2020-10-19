//
//  albumDetail.swift
//  147ebook
//
//  Created by User20 on 2020/10/16.
//

import SwiftUI

struct albumDetail: View {
    let album: Album
    
    @State private var rotateDegree: Double = 0
    var body: some View {
        ZStack{
            VStack{
            
                Image(album.name)
                    .resizable()
                    .scaleEffect()
                    .frame(width:300,height: 300)
                    .clipped()
                    .padding()
                
                
                ScrollView {
                    VStack {
                        ForEach(0..<album.song.count){(index) in
                            HStack{
                                Image(systemName: "music.note")
                                    .foregroundColor(.black)
                                Text(album.song[index])
                                    .lineLimit(nil)
                                    .foregroundColor(.black)
                                    .lineSpacing(15)
                                    .cornerRadius(20)
                                    .frame(height:50)
                                    
                                }
                                .font(.system(size: 23))
                            .frame(width: 4*UIScreen.main.bounds.width/5, alignment: .leading)
                            }
                                

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
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 241/255, blue: 208/255),Color(red: 255/255, green: 181/255, blue: 206/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
            
            
            Image("bird1")
                .resizable()
                .frame(width:UIScreen.main.bounds.width*1/4, height:UIScreen.main.bounds.width*1/4)
                .transition(.slide)
                .rotationEffect(.degrees(rotateDegree))
                .animation(Animation.linear(duration:0.5)
                        .repeatForever(autoreverses:true)
                )
                .onAppear{
                    rotateDegree = 30
                }
                .position(x:UIScreen.main.bounds.width*4/5,y:UIScreen.main.bounds.height*4.2/5)
            
        
        }
        
    
    }
}

struct albumDetail_Previews: PreviewProvider {
    static var previews: some View {
        albumDetail(album: Album(name:"Got it?",time:"2014/01/20",song:["Hello","Girls Girls Girls","I Like You","Follow Me","Like Oh","Playground"]))
    }
}
