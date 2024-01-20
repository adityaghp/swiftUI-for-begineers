//
//  EnvironmentObjectUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 21/11/23.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "MacBook", "Apple Watch"])
    }
}

struct EnvironmentObjectUIView: View {
    
    @StateObject private var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { items in
                    NavigationLink(destination: NewDeviceScreen(selectedItem: items)) {
                        Text(items)
                    }
                }
            }
            .navigationTitle("Apple Devices")
        }
        .environmentObject(viewModel)
        //The environmentObject puts the viewModel into a seperate environment so that it can be used in independently in any subviews without passing it from one view to another view
    }
}

struct NewDeviceScreen: View {
    
    let selectedItem: String
    //@ObservedObject var viewModel: EnvironmentViewModel
    //Here we can see that the viewModel is not necessary in this view as it is only used to pass data to another view!
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: DetailView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(Color.orange)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Color.white
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    )
            }
        }
    }
}

struct DetailView: View {
    
    //@ObservedObject var viewModel: EnvironmentViewModel
    
    //The @EnvironmentObject property wrapper gets the data of the object being instanciated in it directly in any view!
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.mint, Color.yellow],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { items in
                        Text(items)
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

#Preview {
    EnvironmentObjectUIView()
}
