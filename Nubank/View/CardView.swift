//
//  CardView.swift
//  Nubank
//
//  Created by Victor Bozelli on 1/22/22.
//

import SwiftUI

struct CardView: View {
    //MARK: Variables
    @State fileprivate var offsetY = CGFloat.zero
    @State fileprivate var accumulatorOffset = CGFloat.zero
    @State fileprivate var initialY = CGFloat.zero
    
    //MARK: Body
    var body: some View {
        let dragGesture = DragGesture().onChanged( { gesture in
            var offset = gesture.translation.height
            if offset <= -350 {
                offset = -50
            }
            else if offset >= 380 {
                offset = 432
            }
            if offsetY + offset < initialY {
                offsetY = 0
            }
            else {
                offsetY = offset
            }
        }).onEnded({ _ in
            accumulatorOffset += offsetY
            
            var opened = false
            
            if offsetY >= 100 {
                opened = true
            }
            else {
                //offsetY = accumulatorOffset
                accumulatorOffset = 0
            }
            
            var toValue = CGFloat.zero
            
            if opened {
                toValue = 380
                accumulatorOffset = 380
            }
            else {
                accumulatorOffset = .zero
            }
            
            withAnimation(.linear(duration: 0.2)) {
                self.offsetY = toValue
            }
        })
        
        ZStack(alignment: .leading) {
            Color.white
            
            GeometryReader { geometry -> Text in
                let frame = geometry.frame(in: .global)
                initialY = frame.origin.y
                return Text("")
            }
            
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

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
