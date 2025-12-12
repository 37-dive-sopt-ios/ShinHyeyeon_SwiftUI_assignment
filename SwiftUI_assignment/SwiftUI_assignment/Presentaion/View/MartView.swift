//
//  MartView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/11/25.
//

import SwiftUI

struct MartView: View {

    @StateObject private var viewModel = MartViewModel()

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(viewModel.marts) { mart in
                    MartCell(title: mart.title, imageName: mart.imageName)
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
