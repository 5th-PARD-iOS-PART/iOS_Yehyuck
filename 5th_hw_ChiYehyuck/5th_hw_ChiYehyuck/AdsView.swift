//
//  AdsView.swift
//  5th_hw_ChiYehyuck
//
//  Created by Yehyuck Chi on 5/2/25.
//

import SwiftUI

struct AdsView: View {
    var body: some View {
        VStack(spacing: 24) {
                    // 상단 박스
                    HStack(alignment: .center) {
                        // 왼쪽 텍스트
                        VStack(alignment: .leading, spacing: 8) {
                            Text("1천원대부터\n고르는 국민간식")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.black)
                            Text("삼립식품 초저가 구매하기")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        // 오른쪽 이미지
                        HStack(spacing: 8) {
                            Image("food") // 단팥빵 이미지 에셋 이름
                                .resizable()
                                .frame(width:120, height: 120)
                        }
                        .padding(.trailing, 20)
                    }
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                    // 하단 안내 텍스트
            HStack {
                // 왼쪽 선
                Rectangle()
                    .fill(Color(.systemGray4))
                    .frame(width: 60,height: 1)
                    .opacity(0.7)
                
                // 텍스트
                Text("50초 · 스크롤 해야 시간이 줄어요")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .padding(.horizontal, 8)
                
                // 오른쪽 선
                Rectangle()
                    .fill(Color(.systemGray4))
                    .frame(width: 60,height: 1)
                    .opacity(0.7)
            }
            
        }
        .padding(.bottom, -10)
        
    }
}

#Preview {
    AdsView()
}
