//
//  GradientsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 03/09/23.
//

import SwiftUI

struct GradientsUIView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)), Color.blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400)
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .center,
                    angle: .degrees(90))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsUIView_Previews: PreviewProvider {
    static var previews: some View {
        GradientsUIView()
    }
}
