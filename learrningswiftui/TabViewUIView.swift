//
//  TabViewUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 13/11/23.
//

import SwiftUI

struct TabViewUIView: View {
    
    @State private var showTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
//        TabView {
//            ForEach(icons, id: \.self) { icons in
//                Image(systemName: icons)
//                    .resizable()
//                    .scaledToFit()
//                    .padding()
//            }
//        }
//        //.padding()
//        .background(
//            RadialGradient(colors: [Color.red, Color.blue], center: .center, startRadius: 5, endRadius: 300)
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//        )
//        .frame(height: 300)
//        .tabViewStyle(PageTabViewStyle())
        
//        TabView{
//            RoundedRectangle(cornerRadius: 20)
//                .foregroundStyle(.red)
//            RoundedRectangle(cornerRadius: 20)
//            RoundedRectangle(cornerRadius: 20)
//                .foregroundStyle(.green)
//        }
//        .frame(height: 250)
//        .tabViewStyle(PageTabViewStyle())
//        .padding()
        
        TabView(selection: $showTab) {
            HomeView(showTab: $showTab)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            Text("BROWSER SCREEN")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("PROFILE SCREEN")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}

struct HomeView : View {
    
    @Binding var showTab: Int
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(edges: .top)
            
            VStack {
                Text("HOME SCREEN")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                Button(action: {
                    showTab = 2
                }, label: {
                    Text("My Profile")
                        .font(.headline)
                        .padding()
                        .background(
                            Color.white
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        )
                })
            }
        }
    }
}

#Preview {
    TabViewUIView()
}
