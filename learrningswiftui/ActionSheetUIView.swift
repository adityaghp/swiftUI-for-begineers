//
//  ActionSheetUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 01/11/23.
//

import SwiftUI

struct ActionSheetUIView: View {
    @State var showMyActionSheet: Bool = false
    @State var showActionSheet: Bool = false
    @State var changeColor: Color = Color.white
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("@Username")
                
                Spacer()
                
                Button(action: {
                    showMyActionSheet = false
                    showActionSheet = true
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .tint(.primary)
            }
            .padding()
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .confirmationDialog("This is a sheet", isPresented: $showActionSheet) {
            if showMyActionSheet {
                OwnProfileButtons()
            } else {
                OtherProfileButtons()
            }
        } message: {
            Text("This is the action sheet message demonstration in swiftui")
        }
    }
}

struct OwnProfileButtons: View {
    var body: some View {
        Button("Edit") {}
        Button("Share") {}
        Button("Delete", role: .destructive) {}
    }
}

struct OtherProfileButtons: View {
    var body: some View {
        Button("View") {}
        Button("Share") {}
        Button("Report", role: .destructive) {}
    }
}

#Preview {
    ActionSheetUIView()
}
