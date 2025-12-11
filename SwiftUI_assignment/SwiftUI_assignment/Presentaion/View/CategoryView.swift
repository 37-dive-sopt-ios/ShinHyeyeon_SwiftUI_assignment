//
//  CategoryView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/11/25.
//

import SwiftUI

struct CategoryView: View {
    let categories = ["음식배달", "픽업", "장보기·쇼핑", "선물하기", "혜택모아보기"]
    let foodCategories = ["한그릇", "치킨", "카페·디저트", "피자", "분식",
                          "고기", "찜·탕", "야식", "패스트푸드", "픽업"]
    let foodImages = ["food0", "food1", "food2", "food3", "food4",
                      "food5", "food6", "food7", "food8", "food9"]
    
    @State private var selectedIndex: Int = 0
    @Namespace private var underlineNamespace
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 18) {
                    ForEach(categories.indices, id: \.self) { index in
                        Button {
                            withAnimation(.interactiveSpring) {
                                selectedIndex = index
                            }
                        } label: {
                            VStack(spacing: 12) {
                                Text(categories[index])
                                    .font(.head_b_18)
                                    .foregroundColor(selectedIndex == index ? .baeminBlack : .baeminGray300)
                                
                                ZStack {
                                    if selectedIndex == index {
                                        Rectangle()
                                            .frame(height: 3)
                                            .foregroundStyle(Color.baeminBlack)
                                            .matchedGeometryEffect(id: "underline", in: underlineNamespace)
                                    } else {
                                        Rectangle().frame(height: 3).opacity(0)
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 15)
            }
            
            Divider()
                .padding(.top, 1)
            
            
            TabView(selection: $selectedIndex) {
                VStack {
                    let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 5)
                    
                    LazyVGrid(columns: columns, spacing: 12) {
                        ForEach(foodCategories.indices, id: \.self) { i in
                            VStack(spacing: 6) {
                                Image(foodImages[i])
                                    .resizable()
                                    .scaledToFit()
                                    .background(Color.baeminBackgroundWhite)
                                    .cornerRadius(20)
                                    .frame(width: 58, height: 58)
                                
                                Text(foodCategories[i])
                                    .font(.body_r_14)
                                    .foregroundStyle(.baeminBlack)
                                    .lineLimit(1)
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 12)
                    
                    Divider()
                        .padding(.top, 12)
                    
                    Button {
                        
                    } label: {
                        HStack(spacing: 4) {
                            Text("음식배달").font(.head_b_14).foregroundColor(.baeminBlack)
                            +
                            Text("에서 더보기").font(.body_r_14).foregroundColor(.baeminBlack)
                            Image(.chevronRight)
                        }
                    }
                    .padding(.vertical, 10)
                }
                .tag(0)
                
                
                ForEach(1..<categories.count, id: \.self) { idx in
                    VStack {
                        Spacer()
                        Text("\(categories[idx])")
                            .foregroundColor(.baeminGray300)
                        Spacer()
                    }
                    .tag(idx)
                }
            }
            .frame(height: 260)
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .background(Color.white)
    }
}

#Preview {
    CategoryView()
}
