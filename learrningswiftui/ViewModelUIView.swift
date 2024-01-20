//
//  ViewModelUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 20/11/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Oranges", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 8)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [self] in
            fruitArray.append(fruit1)
            fruitArray.append(fruit2)
            fruitArray.append(fruit3)
            isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelUIView: View {
    
/*
     Both @StateObject and @ObservedObject have same function
     
     The only major difference is that the @ObservedObject reloads every time the view is refreshed and @StateObject preserves the state
     
     Its always recommended to use @StateObject at start or in Main View and @ObservedObject in Sub views
     
     @StateObject - USE THIS ON CREATION / INIT
     @ObservedObject - USE THIS FOR SUBVIEWS
*/
    
    
    //@ObservedObject private var fruitViewModel: FruitViewModel = FruitViewModel()
    @StateObject private var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruits in
                        HStack {
                            Text("\(fruits.count)")
                                .foregroundStyle(Color.red)
                            Text(fruits.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            //.listStyle(GroupedListStyle())
            .navigationTitle("Fruit List")
            //.onAppear {
                //fruitViewModel.getFruits()
            //}
            .toolbar {
                ToolbarItem(placement: .topBarTrailing, content: {
                    NavigationLink(destination: NewScreeen(passedfruitViewModel: fruitViewModel)) {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }
                })
            }
        }
    }
 }

struct NewScreeen: View {
    
    @Environment(\.dismiss) var dismissView
    @ObservedObject var passedfruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            
            VStack {
                ForEach(passedfruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(Color.primary)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ViewModelUIView()
}
