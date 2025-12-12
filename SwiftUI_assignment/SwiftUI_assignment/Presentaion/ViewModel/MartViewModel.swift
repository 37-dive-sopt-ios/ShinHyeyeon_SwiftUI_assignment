//
//  MartViewModel.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/12/25.
//

import SwiftUI

final class MartViewModel: ObservableObject {
    @Published var marts: [Mart] = [
        Mart(title: "B마트", imageName: "mart0"),
        Mart(title: "CU", imageName: "mart1"),
        Mart(title: "이마트슈퍼", imageName: "mart0"),
        Mart(title: "홈플러스", imageName: "mart1"),
        Mart(title: "GS25", imageName: "mart0"),
        Mart(title: "이마트", imageName: "mart1"),
        Mart(title: "롯데마트", imageName: "mart0"),
        Mart(title: "코스트코", imageName: "mart1")
    ]
}
