//
//  ResizibleSheetUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 29/11/23.
//

import SwiftUI

struct ResizibleSheetUIView: View {
    
    @State private var showSheet: Bool = false
    @State private var detent: PresentationDetent = .large
    
    var body: some View {
        Button("Display Sheet") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MySheetView(showSheet: $showSheet, detent: $detent)
                //.presentationDetents([.medium, .large])
                //.presentationDetents([.fraction(0.5)])
                //.presentationDetents([.height(350)])
                //.presentationDragIndicator(.hidden)
                .presentationDetents([.medium, .large, .fraction(0.3), .height(600)], selection: $detent)
                .interactiveDismissDisabled()
        })
    }
}

struct MySheetView: View {
    
    @Binding var showSheet: Bool
    @Binding var detent: PresentationDetent
    
    var body: some View {
        ZStack {
            VStack(spacing: 10) {
                Text("This is new Sheet")
                    .font(.headline)
                
                Button("Display 30%") {
                    detent = .fraction(0.3)
                }
                
                Button("MEDIUM") {
                    detent = .medium
                }
                
                Button("HEIGHT 600") {
                    detent = .height(600)
                }
                
                Button("LARGE") {
                    detent = .large
                }
                
                Button("Cancel") {
                    showSheet.toggle()
                }
            }
        }
    }
}

#Preview {
    ResizibleSheetUIView()
}
