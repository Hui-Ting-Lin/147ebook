//
//  memberView.swift
//  147ebook
//
//  Created by User20 on 2020/10/16.
//

import SwiftUI

struct memberView: View {

    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    ForEach(0..<memberArray.count){(index) in
                        NavigationLink(
                            destination:memberDetail(member: memberArray[index])){
                                memberRow(member:memberArray[index])
                            }
                        .frame(width:UIScreen.main.bounds.width)
                    }
                    
                }
            }
            .offset(y: 50)
            .scaleEffect()
            .background(Color(red: 255/255, green: 243/255, blue: 176/255))
            .frame(minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct memberView_Previews: PreviewProvider {
    static var previews: some View {
        memberView()
    }
}
