//
//  SimpleTestApp.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 13/10/23.
//

import SwiftUI

struct SimpleTestApp: View {
    @State var name: String = "Aditya Ghorpade"
    @State var about: String = "This is a sample templete to test conditional if-else statements in swiftUI, Conditional Statements are very powerfull and are being used almost everywhere in the code."
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 0.8360877633, blue: 0.6631377935, alpha: 1))
                .ignoresSafeArea()
            VStack(spacing: 30) {
                TemplateView(name: $name, about: $about)
                ButtonUI(name: $name, about: $about)
            }
        }
    }
}

struct ButtonUI: View {
    
    @Binding var name: String
    @Binding var about: String
    
    var body: some View {
        Button(action: {
            name = "Action Triggered!"
            about = "This information is displayed when the button is pressed and action is triggered on the action part of the button as specified. SwiftUI is more fun to learn this way"
        }, label: {
            Text("BUTTON")
                .foregroundStyle(.black)
                .padding()
                .padding(.horizontal, 10)
                .background(
                    Capsule()
                        .stroke(Color.black, lineWidth: 2.0)
                )
        })
    }
}

struct TemplateView: View {
    
    @Binding var name: String
    @Binding var about: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text(about)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 10, x: 10, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    SimpleTestApp()
}
