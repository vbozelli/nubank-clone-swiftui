//
//  TabsView.swift
//  Nubank
//
//  Created by Victor Bozelli on 1/22/22.
//

import SwiftUI

struct TabsView: View {
    //MARK: Constants
    fileprivate let tabItems = [
        TabItem(id: 0, text: "Indicar amigos"),
        TabItem(id: 1, text: "Cobrar"),
        TabItem(id: 2, text: "Depositar"),
        TabItem(id: 3, text: "Transferir"),
        TabItem(id: 4, text: "Bloquear cartão")
    ]
    
    //MARK: Body
    var body: some View {
        let tabItemHeight = TabItemView.TAB_ITEM_HEIGHT
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tabItems) { tabItem in
                    TabItemView(tabItem: tabItem)
                }
            }
            .frame(width: CGFloat(tabItems.count) * TabItemView.TAB_ITEM_WIDTH, height: tabItemHeight)
            .padding(EdgeInsets(top: 0, leading: 32, bottom: 0, trailing: 32))
        }.frame(height: tabItemHeight)
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
