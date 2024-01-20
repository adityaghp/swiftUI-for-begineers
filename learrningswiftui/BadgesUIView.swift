//
//  BadgesUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 28/11/23.
//

import SwiftUI

struct BadgesUIView: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Label("Messge", systemImage: "message")
                }
                .badge(3)
            
            Color.green
                .tabItem {
                    Label("Mail", systemImage: "envelope")
                }
                .badge(7)
            Color.blue
                .tabItem {
                    Label("Calls", systemImage: "phone")
                }
                .badge(10)
        }
        
//        List {
//            Text("Hello World")
//                .badge("New item")
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//            Text("Hello World")
//        }
    }
}

#Preview {
    BadgesUIView()
}
