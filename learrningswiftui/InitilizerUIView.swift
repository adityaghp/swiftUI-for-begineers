//
//  InitilizerUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 23/09/23.
//

import SwiftUI

struct InitilizerUIView: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        //self.title = title
        
        //if title == "Apples" {
            //self.backgroundColor = .red
        //} else {
            //self.backgroundColor = .orange
        //}
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple, oranges
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitilizerUIView(count: 5, fruit: .apple)
        InitilizerUIView(count: 45, fruit: .oranges)
    }
}
