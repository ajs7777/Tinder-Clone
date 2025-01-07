//
//  CardView.swift
//  Tinder Clone
//
//  Created by Abhijit Saha on 07/01/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(.meganfox1)
                .resizable()
                .scaledToFill()
            
            UserInfoView()
                .padding(.horizontal)
            
        }
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

private extension CardView {
    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
}

#Preview {
    CardView()
}
