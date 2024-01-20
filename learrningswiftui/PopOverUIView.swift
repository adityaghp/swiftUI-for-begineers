//
//  PopOverUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 26/10/23.
//
// Using
// 1. Sheets
// 2. Transitions
// 3. Animations

import SwiftUI

struct PopOverUIView: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("BUTTON") {
                    withAnimation(.default) {
                        showNewScreen = true
                    }
                }
                .foregroundStyle(.white)
                .font(.title)
                Spacer()
            }
            
            // METHOD 1 - SHEETS
            
            //.sheet(isPresented: $showNewScreen, content: {
            //NewScreen()
            //})
            
            // METHOD 2 - TRANSITION
            //ZStack {
                //if showNewScreen {
                   // NewScreen(showSheet: $showNewScreen)
                        //.padding(.top, 50)
                        //.transition(.move(edge: .bottom))
                //}
            //}
            //.zIndex(2.0)
            
            //METHOD 3 - ANIMATION OFFSET
            
            NewScreen(showSheet: $showNewScreen)
                .padding(.top, 50)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
            
        }
    }
}

struct NewScreen : View {
    
    //@Environment(\.dismiss) var removeSheet
    @Binding var showSheet: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button(action: {
                withAnimation(.default) {
                    showSheet.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding(20)
            })
        }
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .ignoresSafeArea()
    }
}

#Preview {
    PopOverUIView()
}
