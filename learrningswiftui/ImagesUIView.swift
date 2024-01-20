//
//  ImagesUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 10/09/23.
//

import SwiftUI

struct ImagesUIView: View {
    var body: some View {
        Image("google")
            .renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            //.aspectRatio(contentMode: .fill)
            //.scaledToFill()
            .frame(width: 300, height: 300)
            .foregroundColor(.blue)
            //.clipped()
            //.cornerRadius(175)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25)
                //Ellipse()
            //)
    }
}

struct ImagesUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesUIView()
    }
}
