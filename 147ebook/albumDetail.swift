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
            ScrollView {
                VStack {
                    Text(album.detail)
                        .lineLimit(nil)
                        .background(Color.white)
                        .frame(width:230)
                    }
            }
            
        }.navigationTitle(album.name)
    }
}

struct albumDetail_Previews: PreviewProvider {
    static var previews: some View {
        albumDetail(album: Album(name:"Identify",time:"2014/11/18",detail:"在連伸手都害怕的漆黑之中,被困其中的不完整存在。還有從哪裡傳來的聲音。呼喚被困於黑暗之中我名字的你的聲音，是一束光，成為存在的理由。在困倦疲憊，向下沉淪的瞬間，也因為有了粉絲呼喚他們的名字，所以GOT7才得以飛翔。OT7通過新專輯《Call My Name》表達了對粉絲的感謝，以及埋藏在心底的珍貴情感。\"希望這張專輯能完整地進行詮釋，並傳遞到大家的耳中與心中\",\"謝謝你們成為GOT7的理由。我們也要成為粉絲們的理由\",\"想讓粉絲們充滿幸福的回憶與情感，想成為讓人驕傲的GOT7\"等，將這樣的心情傾注於專輯。"))
    }
}
