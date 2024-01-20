//
//  SwipeActionsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 28/11/23.
//

import SwiftUI

struct SwipeActionsUIView: View {
    
    @State var fruitsList: [String] = ["Apple", "Orange", "Banana", "Peach"]
    
    var body: some View {
        List {
            ForEach(fruitsList, id: \.self) { 
                Text($0.capitalized)
                    .swipeActions(edge: .trailing,
                        allowsFullSwipe: false) {
                        Button("Delete") {}
                            .tint(.red)
                        Button("Save") {}
                            .tint(.green)
                        Button("Archive") {}
                            .tint(.primary)
                    }
                
                    .swipeActions(edge: .leading,
                        allowsFullSwipe: true) {
                        Button("Share") {}
                            .tint(.yellow)
                    }
            }
            //.onDelete(perform: {indexSet in})
        }
    }
}

#Preview {
    SwipeActionsUIView()
}
