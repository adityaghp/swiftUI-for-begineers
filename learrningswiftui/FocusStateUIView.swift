//
//  FocusStateUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 28/11/23.
//

import SwiftUI

struct FocusStateUIView: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    //@FocusState private var usernameInFocus: Bool
    @State private var usernameText: String = ""
    
    //@FocusState private var passwordInfocus: Bool
    @State private var passwordText: String = ""
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $usernameText)
//                .focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .background(
                    Color.gray.brightness(0.3)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                )
            
            SecureField("Add your password here...", text: $passwordText)
//                .focused($passwordInfocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .background(
                    Color.gray.brightness(0.3)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                )
            
            Button("SIGN UP🚀") {
                let usernameIsValid = !usernameText.isEmpty
                let passwordIsValid = !passwordText.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInfocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInfocus = false
                }
            }
            
//            Button("TOGGLE FOCUS STATE") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(30)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
//                usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateUIView()
}
