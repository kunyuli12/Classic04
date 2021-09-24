//
//  togglebottom.swift
//  Classic04
//
//  Created by 暨大附中4 on 2021/9/24.
//

import SwiftUI

struct togglebottom: View {

    var body: some View {
        Button(action: {
            
        }, label: {
            ZStack {
                Rectangle()
                    .frame(width: 58, height: 58, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20)
                Image(systemName: "paperplane.circle")
                    .resizable()
                    .frame(width:45, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
            }
      })
    }
}

struct togglebottom_Previews: PreviewProvider {
    static var previews: some View {
        togglebottom()
    }
}
