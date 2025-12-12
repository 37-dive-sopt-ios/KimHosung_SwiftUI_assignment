//
//  CategoryItemView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.12.
//

import SwiftUI

struct CategoryItemView: View {
    
    private var image: ImageResource
    private var title: String
    
    init(image: ImageResource, title: String) {
        self.image = image
        self.title = title
    }
    
    var body: some View {
        VStack(spacing: 6) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.baeminBackgroundWhite)
                    .frame(width: 58, height: 58)
                
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 58, height: 58)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            
            Text(title)
                .font(.pretendard(.body_r_14))
                .foregroundStyle(.baeminBlack)
        }
    }
}
