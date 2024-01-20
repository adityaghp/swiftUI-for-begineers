//
//  SliderUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 10/11/23.
//

import SwiftUI

struct SliderUIView: View {
    
    @State var sliderValue: Double = 0
    @State var color: Color = Color.red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
                //"\(sliderValue)"
            )
            .foregroundStyle(color)
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: {_ in 
                    color = Color.green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("title")
                }
            )
            .tint(.red)
        }
        .padding()
    }
}

#Preview {
    SliderUIView()
}
