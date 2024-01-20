//
//  AppStorageUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 24/11/23.
//

import SwiftUI

struct AppStorageUIView: View {
    
    //@State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Aditya"
                currentUserName = name
                //UserDefaults.standard.setValue(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageUIView()
}
