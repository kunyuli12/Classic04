//
//  ContentView.swift
//  Classic04
//
//  Created by 暨大附中4 on 2021/9/14.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    var body: some View {
       
        List{
            ForEach(TextStrings){ item in
                NavigationLink(
                    destination: NavigationLink(
                        destination: List{
                            Text("Navigate")
                            /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                        },
                        label: {
                            /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                        }),
                    label: {
                        /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                    })
              }.listRowBackground(Color.green)
        }.background(Color.orange.edgesIgnoringSafeArea(.all))
      
   
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct textStrings : Identifiable{
    var id = UUID()
    var texts : String
}
let  TextStrings = [
    textStrings(texts:"word"),
    textStrings(texts:"word"),
    textStrings(texts:"word"),
    textStrings(texts:"word"),
    textStrings(texts:"word"),
    textStrings(texts:"word"),
    textStrings(texts:"word"),
    textStrings(texts:"word")
    
]
