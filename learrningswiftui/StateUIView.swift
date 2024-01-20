//
//  StateUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 13/10/23.
//

import SwiftUI

struct StateUIView: View {
    
    @State var background: Color = Color.white
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            background
                .ignoresSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Count : \(count)".uppercased())
                    .font(.title)
                
                Button(action: {
                    count += 1
                }, label: {
                    Text("Button")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Color.blue
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        )
                })
                
                Button(action: {
                    count = 0
                    background = Color.white
                }, label: {
                    Circle()
                        .fill(.red)
                        .frame(width:75, height: 75)
                        .overlay(
                            Text("Reset!")
                                .foregroundStyle(.white)
                        )
                })
                
                HStack(spacing:15) {
                    Button(action: {
                        background = Color.mint
                    }, label: {
                        Text("Background 1")
                            .foregroundStyle(.white)
                            .font(.headline)
                            .padding()
                            .background(
                                Color.green
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                            )
                    })
                    
                    Button(action: {
                        background = Color.yellow
                    }, label: {
                        Text("Background 2")
                            .foregroundStyle(.white)
                            .font(.headline)
                            .padding()
                            .background(
                                Color.purple
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                            )
                    })
                }
            }
        }
    }
}

#Preview {
    StateUIView()
}
