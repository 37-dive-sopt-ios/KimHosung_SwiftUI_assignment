//
//  MarketView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.12.
//

import SwiftUI

struct MarketView: View {
    
    private let marketCategories: [Category]
    
    init(marketCategories: [Category]) {
        self.marketCategories = marketCategories
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 16) {
                ForEach(marketCategories) { marketCategory in
                    Button(action: {
                        Log.d(marketCategory.title)
                    }, label: {
                        CategoryItemView(image: marketCategory.image, title: marketCategory.title)
                    })
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 11)
        }
        .background(.baeminWhite)
        .scrollIndicators(.hidden)
    }
}
