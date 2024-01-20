//
//  ButtonStylesUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 27/11/23.
//

import SwiftUI

struct ButtonStylesUIView: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {
                Text("Button title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
            Button("BUTTON TITLE") {
                
            }
            .frame(height: 55)
            //.buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("BUTTON TITLE") {
                
            }
            .frame(height: 55)
            //.buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            
            Button("BUTTON TITLE") {
                
            }
            .frame(height: 55)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button("BUTTON TITLE") {
                
            }
            .frame(height: 55)
            //.buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
        }
        .padding()
    }
}

#Preview {
    ButtonStylesUIView()
}
