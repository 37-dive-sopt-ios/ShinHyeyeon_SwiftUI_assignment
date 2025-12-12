//
//  CategoryView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/11/25.
//

import SwiftUI

struct CategoryView: View {

    @StateObject private var viewModel = CategoryViewModel()
    @Namespace private var underlineNamespace

    var body: some View {
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 18) {
                    ForEach(viewModel.topCategories.indices, id: \.self) { index in
                        Button {
                            withAnimation(.interactiveSpring) {
                                viewModel.selectedIndex = index
                            }
                        } label: {
                            VStack(spacing: 12) {
                                Text(viewModel.topCategories[index].title)
                                    .font(.head_b_18)
                                    .foregroundColor(viewModel.selectedIndex == index ? .baeminBlack : .baeminGray300)

                                underlineView(isSelected: viewModel.selectedIndex == index)
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 15)
            }

            Divider().padding(.top, 1)

            TabView(selection: $viewModel.selectedIndex) {
                VStack {
                    let columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 5)

                    LazyVGrid(columns: columns, spacing: 12) {
                        ForEach(viewModel.foodCategories) { item in
                            VStack(spacing: 6) {
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .background(Color.baeminBackgroundWhite)
                                    .cornerRadius(20)
                                    .frame(width: 58, height: 58)

                                Text(item.title)
                                    .font(.body_r_14)
                                    .foregroundStyle(.baeminBlack)
                                    .lineLimit(1)
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 12)
                }
                .tag(0)

                ForEach(1..<viewModel.topCategories.count, id: \.self) { idx in
                    VStack {
                        Spacer()
                        Text(viewModel.topCategories[idx].title)
                            .foregroundColor(.baeminGray300)
                        Spacer()
                    }
                    .tag(idx)
                }
            }
            .frame(height: 189)
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            Divider().padding(.top, 12)

            Button { } label: {
                HStack(spacing: 4) {
                    Text(viewModel.topCategories[viewModel.selectedIndex].title)
                        .font(.head_b_14)
                    +
                    Text("에서 더보기")
                        .font(.body_r_14)

                    Image(.chevronRight)
                }
                .foregroundColor(.baeminBlack)
            }
            .padding(.vertical, 10)
        }
        .background(Color.white)
        .clipShape(.rect(
            cornerRadii: .init(topLeading: 10, topTrailing: 10)
        ))
    }

    @ViewBuilder
    private func underlineView(isSelected: Bool) -> some View {
        if isSelected {
            Rectangle()
                .frame(height: 3)
                .foregroundStyle(Color.baeminBlack)
                .matchedGeometryEffect(id: "underline", in: underlineNamespace)
        } else {
            Rectangle().frame(height: 3).opacity(0)
        }
    }
}

#Preview {
    CategoryView()
}
