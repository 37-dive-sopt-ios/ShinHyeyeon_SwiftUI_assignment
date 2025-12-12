//
//  TabItemView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/12/25.
//

import SwiftUI

struct TabItemView<Content: View>: View {
    let view: Content
    let title: String
    let icon: ImageResource

    var body: some View {
        view
            .tabItem {
                Image(icon)
                Text(title)
                    .font(.body_r_10)
            }
    }
}
