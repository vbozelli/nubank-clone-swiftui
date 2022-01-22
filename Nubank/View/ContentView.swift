//
//  ContentView.swift
//  Nubank
//
//  Created by Victor Bozelli on 1/16/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: Body
    var body: some View {
        ZStack {
            
            Color(.sRGB, red: 0.55, green: 0.06, blue: 0.68, opacity: 1.0).ignoresSafeArea()
            
            VStack {
                
                HeaderView()
                
                ZStack(alignment: .top) {
                    CardView()
                    
                    VStack {
                        Spacer()
                        
                        TabsView()
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
                    }
                    .frame(alignment: .bottom)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
