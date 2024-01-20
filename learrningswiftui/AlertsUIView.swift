//
//  AlertsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 31/10/23.
//

import SwiftUI

//struct Article: Identifiable {
//    var id: String { title }
//    let title: String
//    let description: String
//}

struct AlertsUIView: View {
    
    @State var showAlert: Bool = false
//    @State var article = Article(title: "Alerts in SwiftUI", description: "This is a demonstration of alerts in swiftUI.")
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                AlertButton(alertTitle: $alertTitle, alertMessage: $alertMessage, showAlert: $showAlert)
            }
            .alert(alertTitle, isPresented: $showAlert) {
                Button("Read") {
                    backgroundColor = Color.yellow
                }
                Button("Cancel", role: .cancel) {
                    backgroundColor = Color.green
                }
            } message: {
                Text(alertMessage)
            }
        }
    }
}

struct AlertButton: View {
    
    @Binding var alertTitle: String
    @Binding var alertMessage: String
    @Binding var showAlert: Bool
    
    var body: some View {
        Button(action: {
            alertTitle = "WARNING!"
            alertMessage = "Failed to upload your video, Check your network connection"
            showAlert.toggle()
        }, label: {
            Text("Button 1")
                .font(.headline)
                .foregroundStyle(Color.white)
                .padding()
                .background(
                    Color.black
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                )
        })
        
        Button(action: {
            alertTitle = "BINGO!"
            alertMessage = "Your video has been successfully uploaded"
            showAlert.toggle()
        }, label: {
            Text("Button 2")
                .font(.headline)
                .foregroundStyle(Color.white)
                .padding()
                .background(
                    Color.black
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                )
        })
    }
}


#Preview {
    AlertsUIView()
}
