//
//  SwiftUIView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.12.
//

import SwiftUI

struct RankingView: View {
    
    private let oneBowls: [OneBowlModel]
    
    init(oneBowls: [OneBowlModel]) {
        self.oneBowls = oneBowls
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(hex: 0x7276FF), .baeminWhite]), startPoint: .init(x: 0.5, y: 0.2), endPoint: .init(x: 0.5, y: 0.4))
            VStack {
                headerView
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(oneBowls) { oneBowl in
                            OneBowlView(oneBowl: oneBowl)
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
        }
    }
    
    private var headerView: some View {
        HStack {
            Text("우리 동네 한그릇 인기 랭킹")
                .font(.pretendard(.title_sb_18))
                .foregroundStyle(.baeminWhite)
            Image(.info)
            Spacer()
            Button(action: {
                Log.d("전체보기")
            }, label: {
                HStack {
                    Text("전체보기")
                        .font(.pretendard(.body_r_14))
                        .foregroundStyle(.baeminWhite)
                    Image(.chevronRight)
                        .renderingMode(.template)
                        .foregroundStyle(.baeminWhite)
                }
            })
        }
        .padding(.horizontal, 16)
        .padding(.top, 24)
        .padding(.bottom, 6)
    }
}
