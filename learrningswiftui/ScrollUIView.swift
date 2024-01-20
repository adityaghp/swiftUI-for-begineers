//
//  ScrollUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 27/09/23.
//

import SwiftUI

struct ScrollUIView: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack() {
                ForEach(1..<20) { index in
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollUIView()
}
