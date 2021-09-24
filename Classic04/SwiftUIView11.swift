//
//  SwiftUIView11.swift
//  Classic04
//
//  Created by 暨大附中4 on 2021/9/24.
//

import SwiftUI

struct SwiftUIView11: View {
    func initialize(){
            UITableView.appearance().backgroundColor = .clear
            UITableViewCell.appearance().backgroundColor = .clear
            UITableView.appearance().tableFooterView = UIView()
     }
    var body: some View {
        List{
            ForEach(0..<10) { _ in 
                Text("第\(50 )行")
            }.listRowBackground(Color.clear)
        }.onAppear{
            self.initialize()
      }
        .background(Color.orange.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}

struct SwiftUIView11_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView11()
    }
}
