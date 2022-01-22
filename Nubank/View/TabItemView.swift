//
//  TabItemView.swift
//  Nubank
//
//  Created by Victor Bozelli on 1/22/22.
//

import SwiftUI

struct TabItemView: View {
    //MARK: Constants
    static let TAB_ITEM_HEIGHT = CGFloat(100.0)
    static let TAB_ITEM_WIDTH = CGFloat(100.0)
    
    //MARK: Properties
    fileprivate var tabItem: TabItem!
    
    //MARK: Constructors
    init() {
    }
    
    init(tabItem: TabItem) {
        self.tabItem = tabItem
    }

    //MARK: Body
    var body: some View {
        ZStack {
            Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0, opacity: 0.2)
            
            Text(tabItem.text)
            .foregroundColor(Color.white)
        }
        .frame(width: TabItemView.TAB_ITEM_WIDTH, height: TabItemView.TAB_ITEM_HEIGHT)
        .cornerRadius(4)
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView()
    }
}
