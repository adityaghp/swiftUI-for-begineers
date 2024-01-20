//
//  IfLetGuardUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 15/11/23.
//

import SwiftUI

struct IfLetGuardUIView: View {
    
    @State private var currentUserID: String? = nil
    @State private var displayText: String? = nil
    @State private var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Here we are practicing safe coding!")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
                //loadData2()
            }
        }
    }
    
    //This function uses if-let to unwrap optional
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "The user ID is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no user ID!"
        }
    }
    
    //This function uses guard-let to unwrap optional
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no user ID!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "The user ID is: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardUIView()
}
