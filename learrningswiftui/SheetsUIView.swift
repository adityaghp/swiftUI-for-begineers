//
//  SheetsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 21/10/23.
//

import SwiftUI

struct SheetsUIView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("BUTTON")
                    .foregroundStyle(Color.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
            .sheet(isPresented: $showSheet, content: {
                SecondScreeen(dissmissSheet: $showSheet)
            })
            
            //.fullScreenCover(isPresented: $showSheet, content: {
                //SecondScreeen(dissmissSheet: $showSheet)
            //})
        }
    }
}

struct SecondScreeen: View {
    
    //@Environment(\.dismiss) var dismissSheet
    @Binding var dissmissSheet: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                //dismissSheet()
                dissmissSheet.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .padding(20)
                    //.background(Color.white)
                    //.clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
    }
}

#Preview {
    SheetsUIView()
}
