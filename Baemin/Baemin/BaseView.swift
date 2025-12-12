//
//  BaseView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.09.
//

import SwiftUI

struct BaseView: View {
    
    var body: some View {
        TabView {
            Tab("홈", image: "home_fill") {
                HomeView()
            }
            Tab("장보기·쇼핑", image: "shopping") {
                EmptyView()
            }
            Tab("찜", image: "wishlist") {
                EmptyView()
            }
            Tab("주문내역", image: "orderHistory") {
                EmptyView()
            }
            Tab("마이배민", image: "mybaemin") {
                EmptyView()
            }
        }
        .tint(.baeminBlack)
    }
}

#Preview {
    BaseView()
}
