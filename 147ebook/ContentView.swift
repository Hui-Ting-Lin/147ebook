//
//  ContentView.swift
//  147ebook
//
//  Created by User20 on 2020/10/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            albumList()
                .tabItem {
                    Image(systemName: "music.house.fill")
                    Text("Albums")
                }
            memberView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Members")
                }
            photoWallsView()
                .tabItem {
                    Image(systemName: "photo.fill.on.rectangle.fill")
                    Text("PhotoWall")
                }
        }
        .accentColor(.green)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
