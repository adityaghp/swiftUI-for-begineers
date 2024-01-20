//
//  AnimationTimingUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 17/10/23.
//

import SwiftUI

struct AnimationTimingUIView: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Button("button") {
                //withAnimation(.linear) {
                    isAnimating.toggle()
                //}
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.7,
                    blendDuration: 1), value: isAnimating)
            
            //RoundedRectangle(cornerRadius: 20)
                //.frame(width: isAnimating ? 350 : 50, height: 100)
                //.animation(.easeIn(duration: 10.0), value: isAnimating)
            
            //RoundedRectangle(cornerRadius: 20)
                //.frame(width: isAnimating ? 350: 50, height: 100)
                //.animation(.easeInOut(duration: 10.0), value: isAnimating)
            
            //RoundedRectangle(cornerRadius: 20)
                //.frame(width: isAnimating ? 350 : 50, height: 100)
                //.animation(.easeOut(duration: 10.0), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingUIView()
}
