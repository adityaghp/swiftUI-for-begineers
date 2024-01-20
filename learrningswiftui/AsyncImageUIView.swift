//
//  AsyncImageUIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 27/11/23.
//

import SwiftUI

struct AsyncImageUIView: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        AsyncImage(url: url) { phases in
            switch phases {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
//        AsyncImage(url: url) { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//        } placeholder: {
//            ProgressView()
//        }

    }
}

#Preview {
    AsyncImageUIView()
}
