//
//  ForEachUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 24/09/23.
//

import SwiftUI

struct ForEachUIView: View {
    
    let data: [String] = ["Hi", "Hello", "Hi Everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                HStack {
                    Text("\(data[index]) : \(index)")
                }
            }
        }
    }
}

#Preview {
    ForEachUIView()
}
