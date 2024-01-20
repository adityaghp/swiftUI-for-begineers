//
//  TernaryUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 14/10/23.
//

import SwiftUI

struct TernaryUIView: View {
    
    @State var toggleShape: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Toggle element: \(toggleShape.description)".uppercased()) {
                toggleShape.toggle()
            }
            
            Text(toggleShape ? "STARTING STATE" : "ENDING STATE")
            
            RoundedRectangle(cornerRadius: toggleShape ? 25 : 10)
                .fill(toggleShape ? Color.red : Color.blue)
                .frame(width: toggleShape ? 250 : 150, height: toggleShape ? 150 : 150)
        }
    }
}

#Preview {
    TernaryUIView()
}
