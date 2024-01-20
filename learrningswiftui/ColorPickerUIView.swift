//
//  ColorPickerUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 09/11/23.
//

import SwiftUI

struct ColorPickerUIView: View {
    
    @State var backgroundColor: Color = .yellow
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker("Select a Color", selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(Color.white)
                .font(.headline)
                .padding(50)
        }
    }
}

#Preview {
    ColorPickerUIView()
}
