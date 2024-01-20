//
//  StepperUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 10/11/23.
//

import SwiftUI

struct StepperUIView: View {
    
    @State var stepperValue: Int = 0
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Stepper("Stepper : \(stepperValue)", value: $stepperValue)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper") {
                //increment
                incrementWidth(amount: 50)
            } onDecrement: {
                //decrement
                incrementWidth(amount: -50)
            }
        }
        .padding(50)
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperUIView()
}
