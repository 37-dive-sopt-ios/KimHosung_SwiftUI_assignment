//
//  CategoryView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.12.
//

import SwiftUI

struct CategoryView: View {
    
    private let categorymenus: [Category]
    
    init(categorymenus: [Category]) {
        self.categorymenus = categorymenus
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.baeminBackgroundWhite, Color(hex: 0xC9F9F0)]), startPoint: .init(x: 0.5, y: 0), endPoint: .init(x: 0.5, y: 0.2))
            VStack(spacing: 0) {
                HStack {
                    VStack(alignment: .leading, spacing: 6) {
                        Image(.bmartTitle)
                        Text("전상품 쿠폰팩 + 60%특가 >")
                            .font(.pretendard(.head_b_16))
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 14)
                    .padding(.bottom, 27)
                    Spacer()
                }
                
                categoryMenuView
                
                if categoryMenuView.selectedIndex == 0 {
                    categoryContainerView
                } else {
                    
                }
            }
        }
    }
    
    private var categoryMenuView = CategoryMenuView()
    
    private var categoryContainerView: some View {
        VStack(spacing: 0) {
            Divider().padding(.top, 1)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 12), count: 5)) {
                ForEach(categorymenus) { categorymenu in
                    CategoryItemView(image: categorymenu.image, title: categorymenu.title)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 12)
            .padding(.bottom, 21)
            .background(.baeminWhite)
            
            Divider().padding(.top, 1)
            
            Button(action: {
                Log.d("더보기 버튼")
            }, label: {
                HStack(spacing: 0) {
                    Text("음식배달")
                        .font(.pretendard(.head_b_14))
                    
                    Text("에서 더보기")
                        .font(.pretendard(.body_r_14))
                    
                    Image(.chevronRight)
                }
            })
            .tint(.baeminBlack)
            .padding(.vertical, 10)
        }
        .background(.baeminWhite)
    }
}
