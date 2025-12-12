//
//  OneBowlModel.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.12.
//

import SwiftUI

struct OneBowlModel: Identifiable {
    let id: Int
    let image: ImageResource
    let marketName: String
    let rating: Float
    let ratingCount: Int
    let title: String
    let discountRate: Int
    let price: Int
    let originPrice: Int
    let minimumOrder: Int?
}
