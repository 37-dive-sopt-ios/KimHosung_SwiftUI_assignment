//
//  OneBowlView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.12.
//

import SwiftUI

struct OneBowlView: View {
    
    private let oneBowl: OneBowlModel
    
    init(oneBowl: OneBowlModel) {
        self.oneBowl = oneBowl
    }
    
    var body: some View {
        VStack(spacing: 9) {
            Image(oneBowl.image)
                .resizable()
                .scaledToFill()
                .frame(width: 145, height: 145)
                .clipShape(.rect(cornerRadius: 8))
            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 4) {
                    Text(oneBowl.marketName)
                        .font(.pretendard(.body_r_12))
                        .foregroundColor(.baeminGray600)
                    Image(.star)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 10, height: 10)
                    Text(oneBowl.rating.toString(decimalPlace: 1))
                        .font(.pretendard(.body_r_12))
                        .foregroundColor(.baeminGray600)
                    Text("(\(oneBowl.ratingCount.toFormattedString()))")
                        .font(.pretendard(.body_r_12))
                        .foregroundColor(.baeminGray600)
                }
                
                Text(oneBowl.title)
                    .font(.pretendard(.body_r_14))
                    .foregroundColor(.baeminBlack)
                    .lineLimit(1)
                HStack(spacing: 6) {
                    Text("\(oneBowl.discountRate)%")
                        .font(.pretendard(.head_b_14))
                        .foregroundColor(Color(hex: 0xFF1C30))
                    Text("\(oneBowl.price)원")
                        .font(.pretendard(.head_b_14))
                        .foregroundColor(.baeminBlack)
                }
                Text("\(oneBowl.originPrice)원")
                    .font(.pretendard(.body_r_12))
                    .foregroundColor(.baeminGray600)
                    .strikethrough()
                
                if let minimumOrder = oneBowl.minimumOrder {
                    Text("최소주문금액 \(minimumOrder.toFormattedString())원")
                        .font(.pretendard(.head_b_14))
                        .foregroundColor(Color(hex: 0x5415FF))
                } else {
                    Text("최소주문금액 없음")
                        .font(.pretendard(.head_b_14))
                        .foregroundColor(Color(hex: 0x5415FF))
                }
            }
        }
        .frame(width: 145)
        .padding(.bottom, 20)
    }
}
