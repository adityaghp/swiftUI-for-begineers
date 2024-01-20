//
//  ModelSwiftUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 20/11/23.
//

import SwiftUI

struct userModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelSwiftUIView: View {
    
    @State private var users: [userModel] = [
        //"Aditya", "Akshay", "Girish", "Prithvi", "Chinmay"
        userModel(displayName: "Aditya", userName: "aditya._.ghorpade", followerCount: 340, isVerified: true),
        userModel(displayName: "Akshay", userName: "akshaydhamoji", followerCount: 452, isVerified: false),
        userModel(displayName: "Girish", userName: "girish_022", followerCount: 360, isVerified: false),
        userModel(displayName: "Prithvi", userName: "prithvi_g", followerCount: 500, isVerified: true),
        userModel(displayName: "Chinmay", userName: "cmnaik74", followerCount: 852, isVerified: false)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundStyle(Color.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(Color.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(Color.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
            .listStyle(InsetGroupedListStyle())
        }
    }
}

#Preview {
    ModelSwiftUIView()
}
