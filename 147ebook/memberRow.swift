//
//  memberRow.swift
//  147ebook
//
//  Created by User20 on 2020/10/16.
//

import SwiftUI

struct memberRow: View {
    let member: Member
    var body: some View {
        ZStack{
            Image(member.picture)
                .resizable()
                .scaleEffect()
                .frame(width:400,height: 300)
                .cornerRadius(30)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 3))
            Text(member.name)
                .padding(.trailing,-150)
                .padding(.top,260)
                .foregroundColor(.white)
                .font(.system(size: 15, weight: .heavy, design: .serif))
                
            
            Spacer()
        }
    }
}

struct memberRow_Previews: PreviewProvider {
    static var previews: some View {
        memberRow(member: Member(name: "林在範 / 임재범 / Im Jae-Bum",picture:"jb", nickname: "JB", birthday: "1994/01/06", height: "179cm", weight: "66kg", blood: "A", born: "京畿道 高陽市", specialaty: "B-boying, vocal",instagram:"https://www.instagram.com/jaybnow.hr/",igname:"jaybnow.hr"))
    }
}
