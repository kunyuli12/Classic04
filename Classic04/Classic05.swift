//
//  Classic05.swift
//  Classic04
//
//  Created by 暨大附中4 on 2021/9/17.
//

import SwiftUI

struct Classic05: View {
    @State var damo = msgs
    @State var speak = ""
    @State var onoff = true
   // init() {
      //  UITableViewCell.appearance().backgroundColor = .clear
      //  UITableView.appearance().backgroundColor = .clear
      //  UITableView.appearance().sectionIndexBackgroundColor = .clear
   // }
    var body: some View {
        ZStack{
            Image("C1")
                .resizable()
                .ignoresSafeArea()
            VStack {
                List(damo){ item in
                    if (item.ismytalk == false) || (item.speak.count > 10) {
                        LeftView(item: item.speak)
                    }else{
                        RightView(item: item.speak)
                    }
                    //Text("對話內容：\(item.speak)")
                }
                //.listStyle(InsetGroupedListStyle())
                .frame(maxWidth:.infinity)
                .frame(height: 450, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(25)
                .padding(.bottom,40)
                .padding()
            }
            VStack {
                Spacer()
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(maxWidth:.infinity )
                            .frame(height: 44)
                            .cornerRadius(10)
                            .foregroundColor(Color(#colorLiteral(red: 0.8791932906, green: 0.9111109141, blue: 0.9542552348, alpha: 1)))
                            .padding(.leading,20)
                        TextField("內容", text: $speak)
                            .frame(maxWidth:.infinity )
                            .frame(height: 40)
                            .padding(.leading,35)
                    }
                    Button(action: {
                        self.onoff.toggle()
                    }){
                        ZStack {
                            Rectangle()
                                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                            Image(systemName: "arrow.uturn.forward.circle")
                                .resizable()
                                .frame(width:45, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        }
                        
                    }
                    GradientButton(text: "送出對話") {
                        damo.append(msg(speak: speak,ismytalk:onoff))
                        // onoff.toggle()
                        print("debeg")
                    }
                }.frame(maxWidth:.infinity)
                .frame(height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}


struct Classic05_Previews: PreviewProvider {
    static var previews: some View {
        Classic05()
    }
}
struct LeftView: View {
    var item : String
    
    var body: some View{
        HStack{
            Image("B1")
                .resizable()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            ZStack {
                contactview()
                Text("小恐龍\(item)")
            }
            Spacer()
        }.frame(maxWidth:.infinity )
        .background(Color.clear)
        
    }
}
struct RightView: View {
    var item : String
    var body: some View{
        HStack{
            Spacer()
            ZStack {
                contactviewTurn()
                Text("恐龍\(item)")
            }
            Image("A1")
                .resizable()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }.frame(maxWidth:.infinity )
        .background(Color.clear)
        
    }
}


struct msg:Identifiable {
    var id = UUID()
    var speak : String
    var ismytalk =  false
    
}
// let 他宣告的東西不能改變(常數)
let msgs = [msg(speak:"你好啊～")
          //  msg(speak:"你好啊～")
]
//tpggle()真跟假再切換
struct GradientButton: View {
    
    var text:String
    
    var complete:()->Void
    
    var body: some View {
        Button(action: {
            complete()
            
        }, label: {
            VStack {
                Spacer()
                Image(systemName: "paperplane.circle")
                    .resizable()
                    .frame(width:50, height: 50)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.9))
                    .cornerRadius(25)
                Spacer()
            }
            .padding(.trailing,10)
        })
    }
}


struct GradientText: View {
    
    var text:String
    
    var body: some View {
        Text(text)
            .linearGradientBackground(colors: [Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)),Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))])
    }
}

extension View{
    func angularGradientGlow(colors: [Color]) -> some View {
        self.overlay(AngularGradient(gradient: Gradient(colors: colors), center: .center, angle: .degrees(0.0)))
            .mask(self)
    }
    
    func linearGradientBackground(colors: [Color]) -> some View {
        self.overlay(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
}

//Binding = 傳址
