//
//  albumList.swift
//  147ebook
//
//  Created by User20 on 2020/10/16.
//

import SwiftUI

struct albumList: View {
    @State var koreanAlbumList = [
        Album(name:"Got it?",time:"2014/01/20",detail:""),
        Album(name:"Got Love",time:"2014/06/23",detail:"GOT7充滿正能量的專輯‘GOT♡’出道半年再次回歸的，GOT7別具特色的充滿‘Swag’的專輯以J.Y.Park 作詞作曲的快板R&B風格主打歌‘A’回歸了- 包括主打歌‘A’共有 8首的全新力作GOT7將於23日，出道半年後帶著第二張全新迷你專輯‘GOT♡’回歸到粉絲身邊。今年1月 JYP娛樂的第一HipHop男團用融入武術元素的動作為基礎，為音樂界帶來了新鮮的曲風GOT7，推出了第一張「GOT IT」迷你專輯，首支主打「GIRLS GIRLS GIRLS」贏得矚目，現在再推出了包括主打歌‘A‘在內，共有8首歌曲的全新專輯「GOT♡」。"),
        Album(name:"Identify",time:"2014/11/18",detail: ""),
        Album(name:"Just right",time:"2015/07/13",detail: ""),
        Album(name:"MAD",time:"2015/09/29",detail: ""),
        Album(name:"MAD Winder Edition",time:"2015/11/23",detail: ""),
        Album(name:"Flight Log: Departure",time:"2016/03/21",detail: ""),
        Album(name:"Home Run",time:"2016/04/12",detail: ""),
        Album(name:"Flight Log: Turbulence",time:"2016/12/27",detail: ""),
        Album(name:"Flight Log: Arrival",time:"2017/03/13",detail: ""),
        Album(name:"7 for 7",time:"2017/10/10",detail: "《7 for 7》是韓國男子組合GOT7所推出的第七張韓語迷你專輯，距離上張韓語作品《FLIGHT LOG : ARRIVAL》相隔近7個月的時間，是歷經了JJ Project回歸、Jackson以個人身分於中國出道等個別活動後首次合體回歸的專輯，於2017年10月10日發行[1]，由JYP娛樂製作，唱片公司為Genie音樂，共收錄七首新歌，主打歌曲《You Are》由隊長JB參與詞曲創作。11月10日發行台壓獨家精華盤，特別加收中文版《Face》一曲。"),
        Album(name:"Eyes On You",time:"2018/03/12",detail:"以「Eyes On You」專輯的豐富樂風，動人的創作歌詞將團員們真心傳達給最珍惜的\"你\"!「Eyes On You」專輯的主打歌《Look》為了配合7人的不同音色，嘗試了多樣的編曲變化，是一首以pop sound為基礎的house track。特別是GOT7的《Look》通過氣勢Performance的韻動想配合的清亮Sound而完美組合成的音樂，一次性展示了聽與看的魅力隊長JB曾經在專輯「7 for 7」的主打歌《You Are》中負責作詞作曲，展現了他在音樂上的能力，這次在新專輯「Eyes On You」的主打歌《Look》他也同樣擔當了作詞作曲，充分體現了他作為創作人的實力。"),
        Album(name:"Present: You",time:"2018/09/17",detail:"新專輯 《Present : YOU》承載了\"對GOT7來說，人生最美好的禮物(Present)是粉絲(YOU)”這樣的含義。GOT7為了表達這種珍貴的心意而準備了如禮物一般的專輯《Present : YOU》。主打歌《Lullaby》是以夢幻的Synth Sound製作而成的令人印象深刻的Urban Deep House系列Pop歌曲。歌詞如夢般細膩直白地表達了甜蜜幸福的愛情。GOT7 7位成員變身甜蜜Boy，為傾聽者輕輕吟唱甜蜜的旋律。"),
        Album(name:"Present: You & Me Edition",time:"2012/12/03",detail:"為了感謝創造如此奇蹟的國內外粉絲而製作的專輯<Present : YOU> &ME Edition，在“對GOT7來說人生最好的禮物是粉絲”這樣含義的正規3輯'Present : YOU'的基礎上，加上了“ME”，表達了“GOT7是由成員與粉絲共同完成的”這樣的意義。此次專輯中共收錄28首歌曲。CD1中包含主打歌'Miracle’在內的3首新曲，以及世界巡演中‘FLY’, ‘EYES ON YOU’的solo、unit舞臺表演曲，CD2中包含正規3輯主打曲（韓語，英語，中文，西班牙語版本）以及成員solo曲（13~28號歌曲），歌單內容十分豐富。"),
        Album(name:"Spinning Top: Between Security and Insecurity",time:"2019/05/20",detail:
              "飛翔出一片藍天，再帶著豐富的生活記錄回歸，韓國團體 GOT7 的成員在歷經各自的演唱巡迴後再次聚首，發行了第九張韓語迷你專輯《SPINNING TOP : Between Security & Insecurity》，七名團員皆為這張專輯貢獻了一首創作，反映著每位團員對於生活的態度和感想。專輯圍繞著安全感與不安的概念展開，從第一首曲目〈1°〉就破題道出旋轉的起點含義，也在歌詞中緊扣光與暗之間的兩極依存概念。主打歌〈ECLIPSE〉則是延續這種衝突感受，創造出複雜矛盾的奇妙氛圍，而在〈Page〉之中，更是細膩描寫著對生活不斷的反芻思考，就像隊長 JB 在訪問中說到：「有時我會翻閱那些記錄著生活與感受的日記，提醒著我曾經擁有過的時光與感動。」聆聽這張專輯，就像閱讀 GOT7 這段日子以來的生活點滴，擺盪不安卻又堅定前行。"),
        Album(name:"Call My Name",time:"2019/11/04",detail:"在連伸手都害怕的漆黑之中,被困其中的不完整存在。還有從哪裡傳來的聲音。呼喚被困於黑暗之中我名字的你的聲音，是一束光，成為存在的理由。在困倦疲憊，向下沉淪的瞬間，也因為有了粉絲呼喚他們的名字，所以GOT7才得以飛翔。OT7通過新專輯《Call My Name》表達了對粉絲的感謝，以及埋藏在心底的珍貴情感。\"希望這張專輯能完整地進行詮釋，並傳遞到大家的耳中與心中\",\"謝謝你們成為GOT7的理由。我們也要成為粉絲們的理由\",\"想讓粉絲們充滿幸福的回憶與情感，想成為讓人驕傲的GOT7\"等，將這樣的心情傾注於專輯。"),
        Album(name:"DYE",time:"2020/04/20",detail: "GOT7, 全新專輯《DYE》& 主打歌\"NOT BY THE MOON\"\"不要對月亮訴說愛情的誓言\"GOT7的全新迷你專輯《DYE》仿佛一部古典小說，令人印象深刻。渴望著某些東西而勇往直前莽撞的樣子,被極具魅力的展現出來，不禁讓人想起照亮了暗流洶湧大海的燈塔。專輯從多角度審視愛情這種情感，對聽者產生強烈的吸引力。")
        
    ]
    @State var japaneseAlbumList = [
        Album(name:"Around the World",time:"2014/10/22",detail: ""),
        Album(name:"Love Train",time:"2015/08/15",detail: ""),
        Album(name:"Laugh Laugh Laugh",time:"2015/12/23",detail: ""),
        Album(name:"Moriagatteyo",time:"2016/02/03",detail: ""),
        Album(name:"Hey Yah",time:"2016/11/16",detail: ""),
        Album(name:"My Swagger",time:"2017/05/24",detail: ""),
        Album(name:"Turn Up",time:"2017/11/15",detail: ""),
        Album(name:"The New Era",time:"2018/06/20",detail: ""),
        Album(name:"Turn Up",time:"2017/11/15",detail: ""),
        Album(name:"The New Era",time:"2018/06/20",detail: ""),
        Album(name:"Love Loop",time:"2019/06/25",detail: "")
    ]
    var body: some View {

        NavigationView{
            List{
                Section(header:Text("Korean")){
                    ForEach(0..<koreanAlbumList.count){(index) in
                        NavigationLink(
                            destination:albumDetail(album:koreanAlbumList[index])){
                    
                                albumRow(album:koreanAlbumList[index]).previewLayout(.fixed(width: 300, height: 70))
                                }
                    }
                            
                }
                Section(header:Text("Japanese")){
                    ForEach(0..<japaneseAlbumList.count){(index) in
                        albumRow(album:japaneseAlbumList[index]).previewLayout(.fixed(width: 300, height: 70))
                    }
                    //albumRow(album:).previewLayout(.fixed(width: 300, height: 70))
                }
            }
        }
        
    }
}

struct albumList_Previews: PreviewProvider {
    static var previews: some View {
        albumList()
    }
}
