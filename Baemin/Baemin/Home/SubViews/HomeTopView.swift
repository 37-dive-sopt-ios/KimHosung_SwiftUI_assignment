//
//  HomeTopView.swift
//  Baemin
//
//  Created by 김호성 on 2025.12.11.
//

import SwiftUI

struct HomeTopView: View {
    var body: some View {
        HStack(spacing: 12) {
            locationButton
            Spacer()
            benefitButton
            notificationButton
            shopButton
        }
        .padding(.horizontal, 16)
        .padding(.top, 9)
        .background(.baeminBackgroundWhite)
    }
    
    private var locationButton: some View {
        Button(action: {
            Log.d("locationButton Action")
        }, label: {
            HStack(spacing: 3) {
                Text("우리집")
                    .font(.pretendard(.head_b_16))
                Image(.expand)
            }
        })
        .tint(.baeminBlack)
    }
    
    private var benefitButton: some View {
        Button(action: {
            Log.d("benefitButton Action")
        }, label: {
            Image(.benefit)
        })
    }
    
    private var notificationButton: some View {
        Button(action: {
            Log.d("notificationButton Action")
        }, label: {
            Image(.notification)
        })
    }
    
    private var shopButton: some View {
        Button(action: {
            Log.d("shopButton Action")
        }, label: {
            Image(.shop)
        })
    }
}

#Preview {
    HomeTopView()
}
