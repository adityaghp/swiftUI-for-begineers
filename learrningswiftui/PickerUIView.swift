//
//  PickerUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 08/11/23.
//

import SwiftUI

struct PickerUIView: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    var body: some View {
        VStack {
            //Spacer()
            Picker("Pick", selection: $selection) {
                ForEach(filterOptions, id: \.self) { options in
                    Text(options).tag(options)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            //Spacer()
        }
        .padding()
        
        
//        VStack {
//            
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            
//            Picker("Picker", selection: $selection) {
//                ForEach(18..<100) { number in
//                    Text("\(number)").tag("\(number)")
//                }
//            }
//            .pickerStyle(MenuPickerStyle())
//            //.pickerStyle(WheelPickerStyle())
//        }
    }
}

#Preview {
    PickerUIView()
}
