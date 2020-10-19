//
//  SelfiePage.swift
//  147ebook
//
//  Created by User20 on 2020/10/19.
//

import SwiftUI

struct SelfiePage: View {
    var nameNum: Int
    var body: some View {
        TabView{
            ForEach(1..<picNum[nameNum]+1){(index) in
                Image(nameList[nameNum] +  "-" + String(index))
                    .resizable()
                    .scaledToFit()
                
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}

struct SelfiePage_Previews: PreviewProvider {
    static var previews: some View {
        SelfiePage(nameNum: 0)
    }
}
