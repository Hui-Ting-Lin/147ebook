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
                .frame(width:4*UIScreen.main.bounds.width/5,height:2.5*UIScreen.main.bounds.width/5)
                .cornerRadius(30)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 3))
            Text(member.name)
                .offset(x: UIScreen.main.bounds.width/9, y:UIScreen.main.bounds.width/5)
                .foregroundColor(.white)
                .font(.system(size: 15, weight: .heavy, design: .serif))
                
            
            Spacer()
            
        }.background(Color(red: 255/255, green: 243/255, blue: 176/255))
    }
}
    

struct memberRow_Previews: PreviewProvider {
    static var previews: some View {
        memberRow(member: Member(name: "林在範 / 임재범 / Im Jae-Bum",picture:"jb", nickname: "JB", birthday: "1994/01/06", height: "179cm", weight: "66kg", blood: "A", born: "京畿道 高陽市", specialaty: "B-boying, vocal",instagram:"https://www.instagram.com/jaybnow.hr/",igname:"jaybnow.hr"))
    }
}
