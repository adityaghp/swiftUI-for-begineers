//
//  TapGestureUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 20/11/23.
//

import SwiftUI

struct TapGestureUIView: View {
    
    @State private var selectedColor: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .foregroundStyle(selectedColor ? Color.red : Color.primary)
            
            //Changing color using button
            Button(action: {
                selectedColor.toggle()
            }, label: {
                Text("BUTTON")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(
                        Color.blue
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    )
            })
            
            //Changing color using onTapGesture
            Text("TAP GESTURE")
                .font(.headline)
                .foregroundStyle(Color.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(
                    Color.blue
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                )
                .onTapGesture {
                    selectedColor.toggle()
                }
            
            //onTapGesture using count parameter to change color when we double tap
            Text("DOUBLE TAP")
                .font(.headline)
                .foregroundStyle(Color.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(
                    Color.blue
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                )
                .onTapGesture(count: 2) {
                    selectedColor.toggle()
                }
        }
        .padding()
    }
}

#Preview {
    TapGestureUIView()
}
