//
//  PopOverModifierUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 01/12/23.
//

import SwiftUI

struct PopOverModifierUIView: View {
    
    @State private var showPopover: Bool = false
    @State private var feebackOptions: [String] = [
        "Very Good ✅", "Average 👍", "Very Bad ❎"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.brightness(0.3).ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Button("SHOW POPOVER") {
                    showPopover.toggle()
                }
                .padding()
                .background(Color.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top),content: {
                    VStack {
                        ForEach(feebackOptions, id: \.self) { options in
                            Button(options) {}
                                .padding()
                            
                            if options != feebackOptions.last {
                                Divider()
                            }
                        }
                    }
                    .presentationCompactAdaptation(.popover)
                })
            }
        }
    }
}

#Preview {
    PopOverModifierUIView()
}
