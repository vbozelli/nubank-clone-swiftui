//
//  TabItem.swift
//  Nubank
//
//  Created by Victor Bozelli on 1/21/22.
//

import Foundation

struct TabItem: Identifiable {
    //MARK: Properties
    var id: UInt8
    var text: String
    
    //MARK: Constructor
    init(id: UInt8, text: String) {
        self.id = id
        self.text = text
    }
}
