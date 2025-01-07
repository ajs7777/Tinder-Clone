//
//  CardImageIndictorView.swift
//  Tinder Clone
//
//  Created by Abhijit Saha on 07/01/25.
//

import SwiftUI

struct CardImageIndictorView: View {
    let currrentImageIndex : Int
    let imageCount : Int
    var indicatorWidth : CGFloat {
        return SizeConstants.cardWidth / CGFloat(imageCount) - 28
    }
    var body: some View {
        HStack {
            ForEach(0..<imageCount, id: \.self) { index in
                Capsule()
                    .frame(width: indicatorWidth, height: 4)
                    .foregroundStyle(index == currrentImageIndex ? .white : .gray)
                    .padding(.top, 8)
            }
        }
    }
}

#Preview {
    CardImageIndictorView(currrentImageIndex: 2 , imageCount: 4)
        .preferredColorScheme(.dark)
}
