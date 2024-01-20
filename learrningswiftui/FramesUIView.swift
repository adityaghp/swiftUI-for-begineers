//
//  FramesUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 11/09/23.
//

import SwiftUI

struct FramesUIView: View {
    var body: some View {
        Text("Hello, World!")
            //.background(Color.green)
            //.frame(width: 300, height:300, alignment: .center)
            //.frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.red)
            .frame(height: 100, alignment: .center)
            .background(.orange)
            .frame(width: 150, alignment: .center)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(.pink)
            .frame(height: 400, alignment: .center)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .center)
            .background(.yellow)
    }
}

struct FramesUIView_Previews: PreviewProvider {
    static var previews: some View {
        FramesUIView()
    }
}
