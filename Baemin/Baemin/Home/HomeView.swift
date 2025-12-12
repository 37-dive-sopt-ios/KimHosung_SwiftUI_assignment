//
//  HomeView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.09.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) {
                HomeTopView()
                Section {
                    CategoryView(categorymenus: viewModel.categoryMenus)
                    MarketView(marketCategories: viewModel.marketCategories)
                    AdvertisementView(images: viewModel.adsImages)
                } header: {
                    SearchView()
                }
            }
        }
        .background(.baeminBackgroundWhite)
    }
}

struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
