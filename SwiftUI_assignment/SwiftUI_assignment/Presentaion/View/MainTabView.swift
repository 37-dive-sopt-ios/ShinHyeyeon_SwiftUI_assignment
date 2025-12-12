//
//  MainTabView.swift
//  SwiftUI_assignment
//
//  Created by 신혜연 on 12/12/25.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        TabView {
            TabItemView(view: FeedView(), title: "홈", icon: .tabIcon)
            TabItemView(view: ShoppingView(), title: "장보기·쇼핑", icon: .tabIcon1)
            TabItemView(view: FavoriteView(), title: "찜", icon: .tabIcon2)
            TabItemView(view: OrderHistoryView(), title: "주문내역", icon: .tabIcon3)
            TabItemView(view: MyBaeminView(), title: "마이배민", icon: .tabIcon4)
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .white
            
            appearance.stackedLayoutAppearance.selected.iconColor = UIColor.baeminBlack
            appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.baeminBlack]
            
            appearance.stackedLayoutAppearance.normal.iconColor = UIColor.baeminGray700
            appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.baeminGray700]
            
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

struct FeedView: View {
    var body: some View {
        TestView()
    }
}

struct ShoppingView: View {
    var body: some View {
        Color.baeminMint300.ignoresSafeArea()
    }
}

struct FavoriteView: View {
    var body: some View {
        Color.baeminBackgroundPurple.ignoresSafeArea()
    }
}

struct OrderHistoryView: View {
    var body: some View {
        Color.baeminMint500.ignoresSafeArea()
    }
}

struct MyBaeminView: View {
    var body: some View {
        Color.baeminPurple.ignoresSafeArea()
    }
}

#Preview {
    MainTabView()
}
