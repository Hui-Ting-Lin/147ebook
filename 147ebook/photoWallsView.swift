//
//  photoWallsView.swift
//  147ebook
//
//  Created by User20 on 2020/10/17.
//

import SwiftUI

struct photoWallsView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                let colums=[GridItem(.adaptive(minimum: 150))]
                
                LazyVGrid(columns: colums){
                    ForEach(1..<344){item in
                        NavigationLink(
                            destination: Image(String(item))
                                .resizable()
                                .scaledToFit()
                                .background(Color(red: 255/255, green: 227/255, blue: 224/255))
                        ){
                            VStack{
                                Image(String(item))
                                    .resizable()
                                    .scaleEffect()
                                    .frame(height:150)
                                    .clipped()
                            
                            }
                            
                        }
                        
                    }
                }
                
            }
            .background(Color(red: 255/255, green: 227/255, blue: 224/255,opacity:0.7))
            .navigationBarTitle("Photo Wall",displayMode: .inline)
            .offset(y: 50)
            
        }
        
        .padding()
        .background(Color(red: 255/255, green: 227/255, blue: 224/255,opacity:0.7))
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct photoWallsView_Previews: PreviewProvider {
    static var previews: some View {
        photoWallsView()
    }
}
