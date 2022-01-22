//
//  HeaderView.swift
//  Nubank
//
//  Created by Victor Bozelli on 1/22/22.
//

import SwiftUI

struct HeaderView: View {
    //MARK: Body
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                
                Image(uiImage: UIImage(named: "Nubank")!)
                
                Text("Victor")
                .foregroundColor(Color.white)
                .font(.system(size: 18))
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
            }
            .padding(EdgeInsets(top: 32, leading: 0, bottom: 0, trailing: 0))
            
            Image(systemName: "chevron.down")
            .foregroundColor(Color.white)
            .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
