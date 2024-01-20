//
//  BindingUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 13/10/23.
//

import SwiftUI

struct BindingUIView: View {
    
    @State var background: Color = Color.green
    @State var title: String = "THIS IS TITLE"
    var body: some View {
        ZStack {
            background
                .ignoresSafeArea(.all)
                
            VStack {
                Text(title)
                ButtonView(background: $background, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var background: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            background = Color.yellow
            buttonColor = Color.black
            title = "THIS IS NEW TITLE!!!"
        }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal, 10)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
         })
    }
}

#Preview {
    BindingUIView()
}
