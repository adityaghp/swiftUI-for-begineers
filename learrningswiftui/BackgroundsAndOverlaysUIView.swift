//
//  BackgroundsAndOverlaysUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 13/09/23.
//

import SwiftUI

struct BackgroundsAndOverlaysUIView: View {
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //.background(
                //Color.red
                //LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
                //Circle()
                    //.fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
                    //.frame(width: 100, height: 100, alignment: .center)
            //)
            //.background(
                //Circle()
                    //.fill(LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing))
                    //.frame(width: 120, height: 120, alignment: .center)
            //)
        
        //Circle()
            //.fill(.pink)
            //.frame(width: 100, height: 100)
            //.overlay(
                //Text("1")
                    //.font(.largeTitle)
                    //.foregroundColor(.white)
                    //.frame(width: 100, height: 100, alignment: .center)
                    //.background(.yellow)
            //)
            //.background(
                //Circle()
                    //.fill(.purple)
                    //.frame(width: 110, height: 110)
            //)
        
        //Rectangle()
            //.frame(width: 100, height: 100)
            //.overlay(
                //Rectangle()
                    //.fill(Color.blue)
                    //.frame(width: 50, height: 50)
                //, alignment: .topLeading
            //)
            //.background(
                //Rectangle()
                    //.fill(Color.red)
                    //.frame(width: 150, height: 150)
                //, alignment: .bottomTrailing
            //)
        
        Image(systemName: "heart.fill")
            .font(.system(size:40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6727010608, green: 0.2218508422, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width:100, height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)).opacity(0.5), radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.mint)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)).opacity(0.5), radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundsAndOverlaysUIView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundsAndOverlaysUIView()
    }
}
