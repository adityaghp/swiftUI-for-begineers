//
//  AnimationsUpdatedUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 30/11/23.
//

import SwiftUI

struct AnimationsUpdatedUIView: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            Button("Action 1") {
                animate1.toggle()
            }
            
            Button("Action 2") {
                animate2.toggle()
            }
            
            ZStack {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .frame(maxWidth: .infinity, alignment: animate1 ? .trailing : .leading)
                    .background(Color.green)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: animate2 ? .bottom : .top)
            .background(Color.red)
        }
        .animation(.default, value: animate1)
        .animation(.default, value: animate2)
    }
}

#Preview {
    AnimationsUpdatedUIView()
}
