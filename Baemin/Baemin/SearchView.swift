//
//  SearchView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.11.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            TextField("찾아라! 맛있는 음식과 맛집", text: $searchText)
                .font(.pretendard(.body_r_14))
            searchButton
        }
        .padding(.horizontal, 17)
        .padding(.vertical, 13)
        .background(RoundedRectangle(cornerRadius: 50).fill(.baeminWhite))
        .overlay(RoundedRectangle(cornerRadius: 50).stroke(.baeminBlack, lineWidth: 1))
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(.baeminBackgroundWhite)
    }
    
    private var searchButton: some View {
        Button(action: {
            Log.d("searchButton Action")
        }, label: {
            Image(.search)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
        })
    }
}

#Preview {
    SearchView()
}
