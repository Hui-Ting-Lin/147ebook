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
                    .scaledToFill()
                    .frame(width:4*UIScreen.main.bounds.width/5,height:2.5*UIScreen.main.bounds.width/5)
                    .clipped()
                
                ScrollView {
                    VStack(alignment: .leading)
                    {
                        Text("姓名："+member.name).padding()
                            .foregroundColor(.black)
                        Text("藝名："+member.nickname).padding()
                            .foregroundColor(.black)
                        Text("生日："+member.birthday).padding()
                            .foregroundColor(.black)
                        Text("身高："+member.height).padding()
                            .foregroundColor(.black)
                        Text("體重："+member.weight).padding()
                            .foregroundColor(.black)
                        Text("血型："+member.blood+"型").padding()
                            .foregroundColor(.black)
                        Text("出生地："+member.born).padding()
                            .foregroundColor(.black)
                        Text("專長："+member.specialaty).padding()
                            .foregroundColor(.black)
                        HStack{
                            Text("Instagram：")
                                .padding()
                                .foregroundColor(.black)
                            Link(member.igname, destination: URL(string: member.instagram)!)
                        }
                            
                    }
                    
                    .padding()
                    .lineLimit(nil)
                    .cornerRadius(20)
                    
                    
                    
                }
                .frame(width:4*UIScreen.main.bounds.width/5, height:UIScreen.main.bounds.height/1.8)
            }
        .offset(y: 40)
        .frame(minWidth: 0,
        maxWidth: .infinity,
        minHeight: 0,
        maxHeight: .infinity,
        alignment: .center)
        .navigationBarTitle(member.nickname,displayMode: .inline)
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 253/255, green: 252/255, blue: 220/255),Color(red: 255/255, green: 202/255, blue: 212/255)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        
        
    }
}

struct memberDetail_Previews: PreviewProvider {
    static var previews: some View {
        memberDetail(member: Member(name: "林在範 / 임재범 / Im Jae-Bum",picture:"jb", nickname: "JB", birthday: "1994/01/06", height: "179cm", weight: "66kg", blood: "A", born: "京畿道 高陽市", specialaty: "B-boying, vocal", instagram:"https://www.instagram.com/jaybnow.hr/",igname:"jaybnow.hr"))
    }
}
