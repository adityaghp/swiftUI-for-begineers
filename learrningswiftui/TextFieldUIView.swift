//
//  TextFieldUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 02/11/23.
//

import SwiftUI

struct TextFieldUIView: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack{
                TextField("Type something here..", text: $textFieldText)
                    .padding()
                    .background(
                        Color.gray.opacity(0.3)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    )
                
                Button(action: {
                    if validateText() {
                        saveText()
                    }
                }, label: {
                    Text("SAVE")
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(
                            Color.blue
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        )
                })
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .navigationTitle("TextField View")
            .padding()
        }
        
    }
    
    func validateText() -> Bool {
        if(textFieldText == "") {
            return false
        }
        return true
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldUIView()
}
