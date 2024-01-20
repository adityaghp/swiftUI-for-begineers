//
//  ToggleUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 08/11/23.
//

import SwiftUI

struct ToggleUIView: View {
    
    @State var toggleState: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleState ? "Online" : "Offline")
            }
            .font(.largeTitle)
            
            Toggle(isOn: $toggleState, label: {
                Text("Change status")
            })
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ToggleUIView()
}
