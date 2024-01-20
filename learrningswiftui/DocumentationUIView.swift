//
//  DocumentationUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 15/11/23.
//

import SwiftUI

struct DocumentationUIView: View {
    
    //MARK: PROPERTIES
    
    @State private var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    
    @State private var showAlert: Bool = false
    
    //MARK: BODY
    
    // working copy - things to do:
    /*
     1) Fix title
     2) Fix alert
     */
    
    var body: some View {
        NavigationStack { //START: NAV-STACK
            ZStack {
                //background
                Color.yellow.ignoresSafeArea()
                
                //foreground
                foregroundLayer
                    .navigationTitle("Documentation")
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button(action: {
                                showAlert.toggle()
                            }, label: {
                                Text("Alert")
                            })
                        }
                    }
            }
        } //END: NAV-STACK
        .alert("ALERT!", isPresented: $showAlert) {
            Button("OK") {}
        } message: {
            Text("This is a Documentation bootcamp")
        }
    }
    
    ///This is a foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { fruits in
                Text(fruits)
                    .font(.headline)
            }
        }
    }
}

//MARK: PREVIEW

#Preview {
    DocumentationUIView()
}
