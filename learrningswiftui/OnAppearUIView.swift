//
//  OnAppearUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 15/11/23.
//

import SwiftUI

struct OnAppearUIView: View {
    
    @State private var myText: String = "Staring text"
    
    @State private var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text.."
                }
            })
            .onDisappear(perform: {
                myText = "Ending text..."
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

#Preview {
    OnAppearUIView()
}
