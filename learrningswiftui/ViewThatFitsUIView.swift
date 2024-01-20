//
//  ViewThatFitsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 02/12/23.
//

import SwiftUI

struct ViewThatFitsUIView: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that i would like to display to the user!")
                Text("This is some text that i wold like to display!")
                Text("This is a text!")
            }
        }
        .frame(height: 300)
        .padding()
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsUIView()
}
