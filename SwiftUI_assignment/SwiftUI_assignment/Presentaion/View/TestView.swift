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
            VStack(spacing: 0) {
                HeaderView()
                CategoryView()
                MartView()
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TestView()
}
