//
//  GroupsUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 30/11/23.
//

import SwiftUI

struct GroupsUIView: View {
    var body: some View {
        VStack {
            Text("Hello world")
            Group {
                Text("Hello world")
                Text("Hello world")
            }
            .font(.largeTitle)
            .foregroundStyle(Color.green)
        }
        .font(.title)
        .foregroundStyle(Color.red)
    }
}

#Preview {
    GroupsUIView()
}
