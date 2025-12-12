//
//  BannerView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/11/25.
//

import SwiftUI

struct BannerView: View {
    
    private let bannerImages = ["banner1", "banner2", "banner3"]
    @State private var index = 0
    
    var body: some View {
        TabView(selection: $index) {
            ForEach(bannerImages.indices, id: \.self) { i in
                Image(bannerImages[i])
                    .resizable()
                    .scaledToFill()
                    .frame(height: 114)
                    .tag(i)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: 114)
    }
}

#Preview {
    BannerView()
}
