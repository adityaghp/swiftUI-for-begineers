//
//  SpacerUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 18/09/23.
//

import SwiftUI

struct SpacerUIView: View {
    var body: some View {
        //HStack(spacing: 0) {
            //Spacer(minLength: nil)
                //.frame(height:10)
                //.background(.orange)
            
            //Rectangle()
                //.frame(width: 50, height: 50)
            
            //Spacer(minLength: nil)
                //.frame(height: 10)
                //.background(.orange)
    
            //Rectangle()
                //.fill(Color.red)
                //.frame(width: 50, height: 50)
            
            //Spacer(minLength: nil)
                //.frame(height: 10)
                //.background(.orange)
            
            //Rectangle()
                //.fill(Color.green)
                //.frame(width: 50, height: 50)
            
            //Spacer(minLength: nil)
                //.frame(height: 10)
                //.background(.orange)
        //}
        //.background(Color.yellow)
        //.padding(.horizontal, 200)
        //.background(Color.blue)
        
        VStack {
            HStack(alignment: .center, spacing: nil) {
                Image(systemName: "xmark")
                
                Spacer()
                    //.frame(height: 10)
                    //.background(.red)
                
                Image(systemName: "gear")
            }
            .font(.system(size: 40))
            //.background(Color.yellow)
            .padding(.horizontal)
            //.background(.blue)
            
            Spacer()
                //.frame(width: 10)
                //.background(.red)
            
            Rectangle()
                .frame(height: 50)
           
//---------------------------- A sample bottom navigation bar-------------------------------//
            
            //HStack {
                //Image(systemName: "phone.circle")
                
                //Spacer()
                
                //Image(systemName: "person.circle")
                
                //Spacer()
                
                //Image(systemName: "text.bubble")
            //}
            //.font(.system(size: 40))
            //.padding()
            
//--------------------------- A sample bottom navigation bar--------------------------------//
        }
    }
}

struct SpacerUIView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerUIView()
    }
}
