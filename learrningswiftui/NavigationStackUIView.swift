//
//  NavigationStackUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 29/11/23.
//

import SwiftUI

struct NavigationStackUIView: View {
    
    let fruits: [String] = ["Apple", "Orange", "Banana", "Peach"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 40) {
                    Button("Super segue") {
                        stackPath.append(contentsOf: ["Coconut", "Watermelon", "Mangoes"])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SCREEN: \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("INSIDE SCREEN: \(value)")
    }
}

#Preview {
    NavigationStackUIView()
}
