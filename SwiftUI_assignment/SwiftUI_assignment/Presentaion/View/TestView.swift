//
//  TestView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/11/25.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        ZStack {
            Color.baeminBackgroundWhite
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    HeaderView()
                    CategoryView()
                    MartView()
                    BannerView()
                    RankingView()
                    Spacer()
                }
            }
            .padding(.bottom, 60)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TestView()
}
