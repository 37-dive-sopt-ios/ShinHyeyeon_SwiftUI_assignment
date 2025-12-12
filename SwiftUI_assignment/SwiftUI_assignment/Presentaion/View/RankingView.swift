//
//  RankingView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/11/25.
//

import SwiftUI

struct RankingView: View {

    private let items = Array(0..<5)

    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(
                colors: [
                    Color.baeminBackgroundPurple,
                    .white,
                    .white
                ],
                startPoint: .top,
                endPoint: .center
            )

            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 3) {
                    Text("우리 동네 한그릇 인기 랭킹")
                        .font(.title_sb_18)
                        .foregroundColor(.white)

                    Image(.infoIcon)
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.white)

                    Spacer()

                    HStack(spacing: 4) {
                        Text("전체보기")
                            .font(.body_r_14)
                        Image(.chevronRight)
                            .renderingMode(.template)
                    }
                    .foregroundColor(.white)
                }
                .padding(.top, 24)
                .padding(.horizontal, 16)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(items, id: \.self) { _ in
                            RankingCell()
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 18)
                    .padding(.bottom, 20)
                }
            }
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    RankingView()
}
