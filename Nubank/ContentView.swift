//
//  ContentView.swift
//  Nubank
//
//  Created by Victor Bozelli on 1/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(.sRGB, red: 0.55, green: 0.06, blue: 0.68, opacity: 1.0).ignoresSafeArea()
            
            VStack {
                
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
                }
                
                Image(systemName: "chevron.down")
                .foregroundColor(Color.white)
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                
                ZStack {
                    Color.white
                    
                    VStack(alignment: .center) {
                        HStack {
                            Text("Saldo disponível")
                            .foregroundColor(Color(.sRGB, red: 0.6, green: 0.6, blue: 0.6, opacity: 1.0))
                            .font(.system(size: 14))
                            
                            Text("R$ 0,00")
                            .foregroundColor(Color(.sRGB, red: 0.2, green: 0.2, blue: 0.2, opacity: 1.0))
                            .font(.system(size: 32))
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
                .frame(maxHeight: 400)
                .cornerRadius(4)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
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
