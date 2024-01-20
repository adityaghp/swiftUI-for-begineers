//
//  SafeAreaInsetsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 30/11/23.
//

import SwiftUI

struct SafeAreaInsetsUIView: View {
    var body: some View {
        NavigationStack {
            List(0..<10) {_ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("SafeArea Insets")
            //.navigationBarTitleDisplayMode(.inline)
//            .overlay(alignment: .bottom) {
//                Text("Hello")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//            }
            .safeAreaInset(edge: .top, alignment: .trailing) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    //.padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
                    //.clipShape(Circle())
                    //.padding()
            }
            .safeAreaInset(edge: .bottom, alignment: .center) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
            }
        }
    }
}

#Preview {
    SafeAreaInsetsUIView()
}
