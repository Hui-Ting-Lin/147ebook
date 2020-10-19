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
            VStack{
                ScrollView(.horizontal){
                    let rows = [GridItem()]
                    LazyHGrid(rows: rows){
                        ForEach(0..<7){(index) in
                            NavigationLink(
                                destination:
                                    SelfiePage(nameNum: index)
                            )
                            {
                                SelfieItem(selfieName:nameList[index])
                            }
                        }
                    }
                    .frame(height:150)
                    .offset(x: 5)
                }
                
                .frame(height:150)
                //.background(Color(red: 255/255, green: 227/255, blue: 224/255))
               ScrollView(.vertical){
                    let colums=[GridItem(.adaptive(minimum: 150))]
                    
                    LazyVGrid(columns: colums){
                        ForEach(1..<345){item in
                            NavigationLink(
                                destination: Image(String(item))
                                    .resizable()
                                    .scaledToFit()
                                
                            ){
                                VStack{
                                    Image("little"+String(item))
                                        .resizable()
                                        .scaleEffect()
                                        .frame(height:150)
                                        .clipped()
                                
                                }
                                
                            }
                            
                        }
                    }
                    
               }
               .padding()
               .navigationBarTitle("Photo Wall",displayMode: .inline)
                
            }
        }
        
        //.padding()
        //.background(Color(red: 255/255, green: 227/255, blue: 224/255,opacity:0.7))
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct photoWallsView_Previews: PreviewProvider {
    static var previews: some View {
        photoWallsView()
    }
}
