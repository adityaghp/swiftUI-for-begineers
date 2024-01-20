//
//  ConditionalStatementsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 13/10/23.
//

import SwiftUI

struct ConditionalStatementsUIView: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 200, height: 100)
            }
        }
    }
}

#Preview {
    ConditionalStatementsUIView()
}


