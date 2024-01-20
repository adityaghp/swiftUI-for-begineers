//
//  ColorsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 03/09/23.
//

import SwiftUI

struct ColorsUIView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.primary
                //Color(#colorLiteral(red: 0.6756709814, green: 0.4029015303, blue: 0.727660358, alpha: 1))
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
//            .shadow(color: Color.red, radius: 10, x: 0.0, y: 0.0)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

struct ColorsUIView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsUIView()
    }
}
