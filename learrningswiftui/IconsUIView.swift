//
//  IconsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 09/09/23.
//

import SwiftUI

struct IconsUIView: View {
    var body: some View {
        Image(systemName:"person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            //.scaledToFill()
            //.font(.largeTitle)
            //.font(.system(size: 200))
            //.foregroundColor(.red)
            //.frame(width: 300, height: 300)
            //.clipped()
    }
}

struct IconsUIView_Previews: PreviewProvider {
    static var previews: some View {
        IconsUIView()
    }
}
