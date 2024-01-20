//
//  PaddingAndSpacerUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 16/09/23.
//

import SwiftUI

struct PaddingAndSpacerUIView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
            //.frame(maxWidth: .infinity, alignment: .leading)
            //.padding(.all, 20)
                .padding(.bottom, 20)
            
            Text("This is the descreption of what we will do on this screen, It is multiple lines and we will align the text to leading edge.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 10, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingAndSpacerUIView_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerUIView()
    }
}
