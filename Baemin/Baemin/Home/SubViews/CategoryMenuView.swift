//
//  CategoryMenuView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.12.
//

import SwiftUI

struct CategoryMenuView: View {
    
    let menus: [String] = ["음식배달", "픽업", "장보기·쇼핑", "선물하기", "혜택모아보기"]
    @State var selectedIndex: Int = 0
    
    @Namespace private var selectedBarNamespace
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(menus.indices, id: \.self) { index in
                    let isSelected: Bool = index == selectedIndex
                    Button(action: {
                        selectedIndex = index
                    }, label: {
                        ZStack(alignment: .bottom) {
                            Text(menus[index])
                                .font(.pretendard(.head_b_18))
                                .padding(.top, 15)
                                .padding(.bottom, 13)
                            if isSelected {
                                Rectangle()
                                    .frame(height: 3)
                                    .matchedGeometryEffect(id: "selectedBar", in: selectedBarNamespace)
                            }
                        }
                    })
                    .tint(isSelected ? .baeminBlack : .baeminGray300)
                }
            }
            .padding(.horizontal, 16)
            .background(.baeminWhite)
            .clipShape(.rect(cornerRadii: .init(topLeading: 10, topTrailing: 10)))
        }
        .shadow(color: .init(hex: 0x28B8B3, alpha: 0.25), radius: 4, x: 0, y: -4)
    }
}

#Preview {
    CategoryMenuView()
}
