//
//  ExtractSubviewsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 13/10/23.
//

import SwiftUI

struct ExtractSubviewsUIView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0, green: 0.9866140485, blue: 0.8378128409, alpha: 1))
                .ignoresSafeArea(.all)
            
            plates
        }
    }
    
    var plates: some View {
        HStack {
            MyItem(count: 1, title: "Apples", color: .red)
            MyItem(count: 5, title: "Oranges", color: .orange)
            MyItem(count: 10, title: "Bananas", color: .yellow)
        }
    }
}

#Preview {
    ExtractSubviewsUIView()
}

struct MyItem: View {
    
    let count: Int
    let title: String
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .frame(width: 75, height: 75)
        .padding()
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
