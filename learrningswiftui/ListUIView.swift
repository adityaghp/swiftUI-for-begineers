//
//  ListUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 31/10/23.
//

import SwiftUI

struct ListUIView: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var vegitables: [String] = [
        "tomatos", "potatos", "spinach", "carrot"
    ]
    
    @State var addListItem: Bool = false
    @State var addItemInTextField: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                Section("Fruits") {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveItem)
                    //.listRowBackground(Color.pink)
                }
                
                Section("Vegitables") {
                    ForEach(vegitables, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
            //.listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                   addButton
                }
            }
        }
        .alert("Add Item", isPresented: $addListItem) {
            TextField("Type here", text: $addItemInTextField)
            
            Button("OK") {
                addItem()
            }
            
            Button("Cancel", role: .cancel) {}
        }
        //.tint(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            addListItem = true
        }
    }
    
    func deleteItem(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
    
    func moveItem(indices: IndexSet, newIndex: Int) {
        fruits.move(fromOffsets: indices, toOffset: newIndex)
    }
    
    func addItem() {
        fruits.append(addItemInTextField)
    }
}

#Preview {
    ListUIView()
}
