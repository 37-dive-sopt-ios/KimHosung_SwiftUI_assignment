//
//  HomeViewModel.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.12.
//

import SwiftUI
import Combine

final class HomeViewModel: ObservableObject {
    
    @Published var marketCategories: [Category] = [
        Category(id: 0, title: "B마트", image: .bmart),
        Category(id: 1, title: "CU", image: .cu),
        Category(id: 2, title: "이마트슈퍼", image: .emartEveryday),
        Category(id: 3, title: "홈플러스", image: .homeplus),
        Category(id: 4, title: "GS25", image: .gs25),
        Category(id: 5, title: "이마트", image: .emart24),
    ]
    
    @Published var adsImages: [ImageResource] = [.ads1, .ads2, .ads3, .ads4, .ads5]
    
    @Published var categoryMenus: [Category] = [
        Category(id: 0, title: "한그릇", image: .oneBowl),
        Category(id: 1, title: "치킨", image: .chicken),
        Category(id: 2, title: "카페·디저트", image: .dessert),
        Category(id: 3, title: "피자", image: .pizza),
        Category(id: 4, title: "분식", image: .bunsik),
        Category(id: 5, title: "고기", image: .meat),
        Category(id: 6, title: "찜·탕", image: .soup),
        Category(id: 7, title: "야식", image: .nightMeal),
        Category(id: 8, title: "패스트푸드", image: .fastfood),
        Category(id: 9, title: "픽업", image: .pickup),
    ]
    
    @Published var oneBowls: [OneBowlModel] = [
        OneBowlModel(id: 0, image: .bunsik, marketName: "백억보쌈제육", rating: 5.0, ratingCount: 1973, title: "[든든한 한끼] 보쌈 막국수", discountRate: 25, price: 12000, originPrice: 16000, minimumOrder: nil),
        OneBowlModel(id: 1, image: .pizza, marketName: "백억보쌈제육", rating: 5.0, ratingCount: 1973, title: "(1인) 피자 + 사이드 Set", discountRate: 20, price: 12000, originPrice: 16000, minimumOrder: nil),
        OneBowlModel(id: 2, image: .oneBowl, marketName: "백억보쌈제육", rating: 5.0, ratingCount: 1973, title: "(1인) 피자 Set", discountRate: 10, price: 10000, originPrice: 11000, minimumOrder: 10000),
    ]
}
