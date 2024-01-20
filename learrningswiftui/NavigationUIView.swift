//
//  NavigationUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 27/10/23.
//

import SwiftUI

struct NavigationUIView: View {
    
    @State var showNewSheet: Bool = false
    
    var body: some View {
        NavigationView(content: {
            ScrollView {
                NavigationLink(destination: SecondNavigationView()) {
                    Text("Navigate")
                }
                .navigationTitle("First Screen")
                .navigationBarTitleDisplayMode(.automatic)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            showNewSheet.toggle()
                        }, label: {
                            Image(systemName: "person.fill")
                        })
                        .tint(Color.black)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(destination: SettingsScreenView()) {
                            Image(systemName: "gear")
                        }
                        .tint(Color.black)
                    }
                }
//                .toolbar(.hidden)
            }
        })
        .sheet(isPresented: $showNewSheet, content: {
            AccountSheetView()
        })
    }
}

struct SecondNavigationView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: ThirdNavigationView()) {
                Text("Go to Third Screen")
            }
        }
        .navigationTitle("Second Screen")
    }
}


struct ThirdNavigationView: View {
    
    @Environment(\.dismiss) var goToPreviousScreen
    
    var body: some View {
        VStack {
            Text("Third Screen")
                .font(.title)
                .fontWeight(.semibold)
            
            Button("Go to previous Screen") {
                goToPreviousScreen()
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct SettingsScreenView: View {
    var body: some View {
        Text("Settings Screen!")
            .font(.title)
            .fontWeight(.semibold)
    }
}

struct AccountSheetView: View {
    var body: some View {
        
        ZStack() {
            
            Color.yellow
                .ignoresSafeArea()

            VStack {
                Image(systemName: "person.circle")
                    .font(.system(size: 100))
                
                Text("Account Information")
                    .font(.title)
                    .padding()
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    NavigationUIView()
}
