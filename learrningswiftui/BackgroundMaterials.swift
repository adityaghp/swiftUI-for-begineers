//
//  BackgroundMaterials.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 27/11/23.
//

import SwiftUI

struct BackgroundMaterials: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(
                .ultraThinMaterial
                //.ultraThickMaterial
                //.thickMaterial
                //.regularMaterial
                //.thinMaterial
            )
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(
            Image("aditya")
                .resizable()
                .ignoresSafeArea()
        )
    }
}

#Preview {
    BackgroundMaterials()
}
