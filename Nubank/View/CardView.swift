//
//  CardView.swift
//  Nubank
//
//  Created by Victor Bozelli on 1/22/22.
//

import SwiftUI

struct CardView: View {
    //MARK: Body
    var body: some View {
        ZStack(alignment: .leading) {
            Color.white
            
            VStack(alignment: .leading) {
                Text("Saldo disponível")
                .foregroundColor(Color(.sRGB, red: 0.6, green: 0.6, blue: 0.6, opacity: 1.0))
                .font(.system(size: 14))
                
                
                Text("R$ 0,00")
                .foregroundColor(Color(.sRGB, red: 0.2, green: 0.2, blue: 0.2, opacity: 1.0))
                .font(.system(size: 32))
            }
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
        }
        .frame(maxHeight: 400)
        .cornerRadius(4)
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
