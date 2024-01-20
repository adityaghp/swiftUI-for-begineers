//
//  ToolBarUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 29/11/23.
//

import SwiftUI

struct ToolBarUIView: View {
    
    @State private var text: String = ""
    @State private var path: [String] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text: $text)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .padding(.leading)
                        .background(Color.gray.brightness(0.3))
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
            }
            //.toolbar(.hidden, for: .navigationBar)
            //.navigationBarHidden(true)
            //.toolbarBackground(.hidden, for: .navigationBar)
            //.toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    path.append("THIS IS SCREEN 1")
                }
                Button("Screen 2") {
                    path.append("THIS IS SCREEN 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text(value)
            }
        }
    }
}

#Preview {
    ToolBarUIView()
}
