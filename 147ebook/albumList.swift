//
//  albumList.swift
//  147ebook
//
//  Created by User20 on 2020/10/16.
//

import SwiftUI

struct albumList: View {
    var body: some View {
        NavigationView{
            VStack{
                
            List{
                Section(header:
                            CustomHeader(
                    name: "Korean",
                    color: Color(red: 255/255, green: 181/255, blue: 167/255))){
                    ForEach(0..<koreanAlbumList.count){(index) in
                        NavigationLink(
                            destination:albumDetail(album:koreanAlbumList[index])){
                    
                                albumRow(album:koreanAlbumList[index]).previewLayout(.fixed(width: 300, height: 70))
                                }
                    }
                            
                }
                Section(header:
                        CustomHeader(
                name: "Japanese",
                color: Color(red: 255/255, green: 181/255, blue: 167/255))){
                    ForEach(0..<japaneseAlbumList.count){(index) in
                        NavigationLink(
                            destination:albumDetail(album:japaneseAlbumList[index])){
                            albumRow(album:japaneseAlbumList[index]).previewLayout(.fixed(width: 300, height: 70))
                        }
                            
                    }
                }
            }
            }
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}
struct CustomHeader: View {
    let name: String
    let color: Color

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text(name)
                    .foregroundColor(.black)
                Spacer()
            }
            Spacer()
        }
        
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .background(color)
        
    }
}

struct albumList_Previews: PreviewProvider {
    static var previews: some View {
        albumList()
    }
}
