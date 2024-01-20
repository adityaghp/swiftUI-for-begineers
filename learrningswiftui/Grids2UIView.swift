//
//  Grids2UIView.swift
//  learrningswiftui
//
//  Created by Aditya Ghorpade on 03/10/23.
//

import SwiftUI

struct Grids2UIView: View {
    
    var rows: [GridItem] = [
            GridItem(.flexible(), spacing: nil, alignment: nil),
            GridItem(.flexible(), spacing: nil, alignment: nil),
            GridItem(.flexible(), spacing: nil, alignment: nil),
            GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
                    LazyHGrid(
                        rows: rows,
                        alignment: .center,
                        spacing: nil,
                        pinnedViews: [],
                        content: {
                            ForEach(0..<50) { index in
                                Rectangle()
                                    .frame(width: 150)
                            }
            })
        }
    }
}

#Preview {
    Grids2UIView()
}
