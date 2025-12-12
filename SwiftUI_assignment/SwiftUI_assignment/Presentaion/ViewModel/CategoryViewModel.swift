//
//  CategoryViewModel.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/12/25.
//

import SwiftUI

final class CategoryViewModel: ObservableObject {
    @Published var topCategories: [Category] = [
        Category(title: "음식배달"),
        Category(title: "픽업"),
        Category(title: "장보기·쇼핑"),
        Category(title: "선물하기"),
        Category(title: "혜택모아보기")
    ]

    @Published var foodCategories: [FoodCategory] = [
        FoodCategory(title: "한그릇", imageName: "food0"),
        FoodCategory(title: "치킨", imageName: "food1"),
        FoodCategory(title: "카페·디저트", imageName: "food2"),
        FoodCategory(title: "피자", imageName: "food3"),
        FoodCategory(title: "분식", imageName: "food4"),
        FoodCategory(title: "고기", imageName: "food5"),
        FoodCategory(title: "찜·탕", imageName: "food6"),
        FoodCategory(title: "야식", imageName: "food7"),
        FoodCategory(title: "패스트푸드", imageName: "food8"),
        FoodCategory(title: "픽업", imageName: "food9")
    ]

    @Published var selectedIndex: Int = 0
}
