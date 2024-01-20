//
//  SubmitTextFieldUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 28/11/23.
//

import SwiftUI

struct SubmitTextFieldUIView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Something to the console...")
                }
            TextField("Placeholder...", text: $text)
                .submitLabel(.go)
                .onSubmit {
                    print("Something to the console...")
                }
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console...")
                }
        }
        
    }
}

#Preview {
    SubmitTextFieldUIView()
}
