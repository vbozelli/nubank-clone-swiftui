//
//  CardView.swift
//  Nubank
//
//  Created by Victor Bozelli on 1/22/22.
//

import SwiftUI

struct CardView: View {
    //MARK: Variables
    @Binding var opacity: CGFloat
    @State fileprivate var opened = false
    @State fileprivate var offsetY = CGFloat.zero
    
    //MARK: Body
    var body: some View {
        let dragGesture = DragGesture(minimumDistance: 0).onChanged( { gesture in
            let offset = gesture.translation.height
            if offset < 0 {
                if offset <= -50 {
                    opened = false
                }
                else {
                    opened = true
                }
            }
            else if offset > 0 {
                if offset >= 50 {
                    opened = true
                }
                else {
                    opened = false
                }
                offsetY = offset
            }
        }).onEnded({ _ in
            var offset = CGFloat.zero
            var opacity = CGFloat(1)
            
            if opened {
                offset = 380
                opacity = 0
            }
            
            withAnimation(.linear(duration: 0.2)) {
                self.offsetY = offset
                self.opacity = opacity
            }
        })
        
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
        .offset(y: offsetY)
        .gesture(dragGesture)
    }
}
