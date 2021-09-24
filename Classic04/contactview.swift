//
//  contactview.swift
//  Classic04
//
//  Created by 暨大附中4 on 2021/9/24.
//

import SwiftUI

struct contactview: View {
    var body: some View {
        ZStack {
            HStack {
                Rectangle()
                .frame(maxWidth:.infinity)
                .frame(height: 40)
                .foregroundColor(Color(#colorLiteral(red: 0.8118288329, green: 0.8647944697, blue: 1, alpha: 1)))
                    .padding(.top,9)
                Spacer()
            }
            Rectangle()
            .frame(maxWidth:.infinity)
            .frame(height: 50)
                .cornerRadius(15)
            .foregroundColor(Color(#colorLiteral(red: 0.8067034237, green: 0.8677863448, blue: 1, alpha: 1)))

        }
    }
}

struct contactview_Previews: PreviewProvider {
    static var previews: some View {
        contactview()
    }
}
