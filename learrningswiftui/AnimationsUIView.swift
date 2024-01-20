//
//  AnimationsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 16/10/23.
//

import SwiftUI

struct AnimationsUIView: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default.repeatCount(5, autoreverses: true)) {
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                //.rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                //.offset(y: isAnimated ? 300 : 0)
                //.animation(.default.repeatCount(5, autoreverses: true), value: isAnimated)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationsUIView()
}
