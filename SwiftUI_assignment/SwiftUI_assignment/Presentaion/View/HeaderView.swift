//
//  HeaderView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/11/25.
//

import SwiftUI

struct HeaderView: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Button {
                    
                } label: {
                    HStack(spacing: 3) {
                        Text("우리집")
                            .font(.head_b_16)
                            .foregroundStyle(.baeminBlack)
                            .padding(.trailing, 3)
                        Image(.polygon)
                    }
                }
                
                Spacer()
                
                HStack(spacing: 12) {
                    Image(.icon1)
                    Image(.icon2)
                    Image(.icon3)
                }
            }
            .padding(.bottom, 10)
            
            HStack(spacing: 8) {
                TextField("찾아라! 맛있는 음식과 맛집", text: $text)
                    .font(.body_r_14)
                
                Image(.searchIcon)
            }
            .padding(.horizontal, 17)
            .padding(.vertical, 13)
            .background(
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(.baeminBlack, lineWidth: 1)
            )
            .padding(.bottom, 24)
            
            HStack(spacing: 0) {
                Image(.bMartImg)
                Spacer()
            }
            
            HStack(spacing: 0) {
                Button {
                    
                } label: {
                    HStack(spacing: 2) {
                        Text("전상품 쿠폰팩 + 60%특가")
                            .font(.head_b_16)
                            .foregroundStyle(.baeminBlack)
                        Image(.chevronRight)
                    }
                }
                Spacer()
            }
        }
        .padding(.top, 54)
        .padding(.horizontal, 16)
        .padding(.bottom, 27)
        .background(
            VStack(spacing: 0) {
                Color(red: 0.953, green: 0.961, blue: 0.969)
                    .frame(height: 180)
                LinearGradient(
                    colors: [
                        Color(red: 0.953, green: 0.961, blue: 0.969),
                        Color(red: 0.788, green: 0.976, blue: 0.941)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            }
        )
    }
}

#Preview {
    HeaderView()
}
