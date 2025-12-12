//
//  AdvertisementView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.12.
//

import SwiftUI

struct AdvertisementView: View {
    
    let images: [ImageResource]
    
    @State private var currentIndex: Int = 0
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .clipped()
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: 256)
    }
}

#Preview {
    AdvertisementView(images: [.ads1, .ads2, .ads3, .ads4, .ads5])
}
