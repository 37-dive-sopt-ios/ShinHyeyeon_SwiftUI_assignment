//
//  MartCell.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/12/25.
//

import SwiftUI

struct MartCell: View {
    let title: String
    let imageName: String
    
    var body: some View {
        VStack(spacing: 6) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 58, height: 58)
                .background(Color.baeminBackgroundWhite)
                .cornerRadius(20)
            
            Text(title)
                .font(.body_r_14)
                .foregroundColor(.baeminBlack)
                .lineLimit(1)
        }
    }
}
