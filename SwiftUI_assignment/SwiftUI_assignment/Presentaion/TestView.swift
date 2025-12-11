//
//  TestView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/11/25.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TestView()
}
