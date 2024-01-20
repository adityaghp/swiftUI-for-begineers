//
//  TextEditorUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 06/11/23.
//

import SwiftUI

struct TextEditorUIView: View {
    
    @State var textEditorText: String = "This is a sample text"
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button(action: {
                    
                }, label: {
                    Text("save".uppercased())
                        .foregroundStyle(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            Color.blue
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        )
                })
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextField View")
        }
    }
}

#Preview {
    TextEditorUIView()
}
