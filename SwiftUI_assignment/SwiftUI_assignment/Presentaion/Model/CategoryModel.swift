//
//  CategoryModel.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/12/25.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    let title: String
}

struct FoodCategory: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
}
