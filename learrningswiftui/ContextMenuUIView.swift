//
//  ContextMenuUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 02/11/23.
//

import SwiftUI

struct ContextMenuUIView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "apple.logo")
                .font(.largeTitle)
            Text("Aditya Ghorpade")
                .font(.headline)
            Text("Hello there! I am an iOS Developer")
        }
        .padding()
        .background(
            Color(#colorLiteral(red: 0.8374214172, green: 0.8374213576, blue: 0.8374213576, alpha: 1))
                .clipShape(RoundedRectangle(cornerRadius:20))
        )
        .contextMenu(menuItems: {
            Button(action: {
                
            }, label: {
                Label("About me!", systemImage: "exclamationmark.circle")
            })
            
            Button(action: {
                
            }, label: {
                Label("Upvote", systemImage: "chevron.up.square")
            })
            
            Button(action: {
                
            }, label: {
                HStack {
                    Text("Like")
                    Image(systemName: "heart")
                }
            })
        })
    }
}

#Preview {
    ContextMenuUIView()
}
