//
//  ButtonsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 12/10/23.
//

import SwiftUI

struct ButtonsUIView: View {
    
    @State var title = "THIS IS MY TITLE"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .font(.system(size: 30))
            
            Button("Press me!") {
                title = "BUTTON 1 WAS PRESSED"
            }
            .foregroundStyle(Color.red)
            
            Button(action: {
                title = "BUTTON 2 WAS PRESSED"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .clipShape(RoundedRectangle(cornerRadius:10))
                    )
            })
            
            Button(action: {
                title = "BUTTON 3 WAS PRESSED"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)))
                    )
            })
            
            Button(action: {
                title = "BUTTON 4 WAS PRESSED"
            }, label: {
                Text("finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
    }
}

#Preview {
    ButtonsUIView()
}
