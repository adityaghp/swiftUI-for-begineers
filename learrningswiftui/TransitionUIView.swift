//
//  TransitionUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 18/10/23.
//

import SwiftUI

struct TransitionUIView: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    withAnimation(.default) {
                        isAnimating.toggle()
                    }
                }
                Spacer()
            }
            
            if isAnimating {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.slide)
                    //.transition(.asymmetric(
                        //insertion: .move(edge: .leading),
                        //removal: .move(edge: .bottom))
                    //)
                    //.transition(AnyTransition.opacity.animation(.default))
                    //.transition(.scale)
                    //.transition(.move(edge: .bottom))
                    //.animation(.easeInOut, value: isAnimating)
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionUIView()
}
