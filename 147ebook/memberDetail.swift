//
//  memberDetail.swift
//  147ebook
//
//  Created by User20 on 2020/10/16.
//

import SwiftUI

struct memberDetail: View {
    let member: Member
    var body: some View {
        VStack{
            Image(member.picture)
                .resizable()
                .scaleEffect()
                .frame(width:400,height: 300)
                .clipped()
            ScrollView {
                VStack {
                    Text("姓名："+member.name)
                    Text("藝名："+member.nickname)
                    Text("生日："+member.birthday)
                    Text("身高："+member.height)
                    Text("體重："+member.weight)
                    Text("血型："+member.blood+"型")
                    Text("出生地："+member.born)
                    Text("專長："+member.specialaty)
                    HStack{
                        Text("Instagram：")
                        Link(member.igname, destination: URL(string: member.instagram)!)
                    }
                        
                    }
                .padding()
                .lineLimit(nil)
                .background(Color.white)
                .frame(width:400)
            }
            
        }.navigationTitle(member.nickname)
    }
}

struct memberDetail_Previews: PreviewProvider {
    static var previews: some View {
        memberDetail(member: Member(name: "林在範 / 임재범 / Im Jae-Bum",picture:"jb", nickname: "JB", birthday: "1994/01/06", height: "179cm", weight: "66kg", blood: "A", born: "京畿道 高陽市", specialaty: "B-boying, vocal", instagram:"https://www.instagram.com/jaybnow.hr/",igname:"jaybnow.hr"))
    }
}
