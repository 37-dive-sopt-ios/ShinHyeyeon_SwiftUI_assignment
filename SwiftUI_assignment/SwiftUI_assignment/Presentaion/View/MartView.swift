//
//  MartView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/11/25.
//

import SwiftUI

struct MartView: View {
    
    private let martCategories = ["B마트", "CU", "이마트슈퍼", "홈플러스", "GS25",
                                  "이마트", "롯데마트", "코스트코"]
    private let martImages = ["mart0", "mart1", "mart0", "mart1", "mart0",
                              "mart1", "mart0", "mart1"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(martCategories.indices, id: \.self) { index in
                    MartCell(
                        title: martCategories[index],
                        imageName: martImages[index]
                    )
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 11)
        }
        .background(Color.white)
        .padding(.vertical, 10)
    }
}

#Preview {
    MartView()
}
