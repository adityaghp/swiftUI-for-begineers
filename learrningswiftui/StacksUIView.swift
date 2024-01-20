//
//  StacksUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 15/09/23.
//

import SwiftUI

struct StacksUIView: View {
    //Vstack -> Vertical
    //Hstack -> Horizontal
    //Zstack -> Z index (back to front)
    var body: some View {
        //ZStack(alignment: .center, content: {
            //Rectangle()
                //.fill(.red)
                //.frame(width: 200, height: 200)
            //Rectangle()
                //.fill(.green)
                //.frame(width: 150, height: 150)
            //Rectangle()
                //.fill(.orange)
                //.frame(width: 100, height: 100)
        //})
        
        ZStack(content: {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 550)
            //Text("National Geographic")
                //.font(.system(.largeTitle))
                //.foregroundColor(.white)
                //.frame(width: 250, height: 450)
                //.background(Color.black)
            VStack(alignment: .center, spacing: nil, content: {
                Rectangle()
                    .fill(.black)
                    .frame(width: 200, height: 150)
                Rectangle()
                    .fill(.green)
                    .frame(width:150, height: 150)
                
                HStack(alignment: .center, spacing: nil ,content: {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 50, height:100)
                    Rectangle()
                        .fill(.indigo)
                        .frame(width: 100, height: 90)
                    Rectangle()
                        .fill(.mint)
                        .frame(width: 60, height: 100)
                })
                .background(Color.white)
            })
            .background(Color.white)
        })
    }
}

struct StacksUIView_Previews: PreviewProvider {
    static var previews: some View {
        StacksUIView()
    }
}
