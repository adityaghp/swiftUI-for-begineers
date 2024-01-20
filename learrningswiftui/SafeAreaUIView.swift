//
//  SafeAreaUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 05/10/23.
//

import SwiftUI

struct SafeAreaUIView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("This is a title")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(20)
                }
            }
        }
    }
}

#Preview {
    SafeAreaUIView()
}
