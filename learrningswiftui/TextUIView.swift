//
//  TextUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 16/08/23.
//

import SwiftUI

struct TextUIView: View {
    var body: some View {
        Text("Hello, World! This is a swiftUI bootcamp tutorial, and we are enjoying this course and learning a lot about swiftUI.")
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(5)
//            .kerning(2.0)
            .multilineTextAlignment(.leading)
            .foregroundColor(.blue)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

struct TextUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextUIView()
    }
}
