//
//  ShapesUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 16/08/23.
//

import SwiftUI

struct ShapesUIView: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .continuous)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.red)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.blue, lineWidth: 30)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.red, lineWidth: 5)
              .frame(width: 300, height: 200)
    }
}

struct ShapesUIView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesUIView()
    }
}
