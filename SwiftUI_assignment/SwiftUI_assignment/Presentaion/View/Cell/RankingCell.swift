//
//  RankingCell.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/12/25.
//

import SwiftUI

struct RankingCell: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Image(.food0)
                .resizable()
                .scaledToFill()
                .frame(width: 145, height: 145)
                .background(Color.baeminBackgroundWhite)
                .clipped()
                .cornerRadius(8)

            HStack(spacing: 5) {
                Text("백억보쌈제육...")
                    .font(.body_r_12)
                    .foregroundColor(.baeminGray600)

                Image(.star)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 10, height: 10)

                Text("5.0")
                    .font(.body_r_12)
                    .foregroundColor(.baeminGray600)

                Text("(1,973)")
                    .font(.body_r_12)
                    .foregroundColor(.baeminGray600)
            }

            Text("[든든한 한끼] 보쌈 막국수")
                .font(.body_r_14)
                .foregroundColor(.baeminBlack)
                .lineLimit(1)

            HStack(spacing: 6) {
                Text("25%")
                    .font(.head_b_14)
                    .foregroundColor(.baeminRed)

                Text("12,000원")
                    .font(.head_b_14)
                    .foregroundColor(.baeminBlack)
            }

            Text("16,000원")
                .font(.body_r_12)
                .foregroundColor(.baeminGray600)
                .strikethrough()

            Text("최소주문금액 없음")
                .font(.head_b_14)
                .foregroundColor(.baeminPurple)

            Spacer(minLength: 0)

        }
        .frame(width: 145, height: 270)
    }
}

#Preview {
    RankingCell()
}
