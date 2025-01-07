//
//  CardView.swift
//  Tinder Clone
//
//  Created by Abhijit Saha on 07/01/25.
//

import SwiftUI

struct CardView: View {
    
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var currrentImageIndex = 0
    
    @State private var mockImages = [
        "meganfox1",
        "meganfox2",
        "meganfox3"
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
            ZStack(alignment:.top) {
                Image(mockImages[currrentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        ImageScrollingOverlay(currrentImageIndex: $currrentImageIndex, imageCount: mockImages.count)
                    }
                CardImageIndictorView(currrentImageIndex: currrentImageIndex, imageCount: mockImages.count)
                SwipeActionIndicatorView(xOffset: $xOffset)
                    .frame(width: SizeConstants.cardWidth)
            }
            
            UserInfoView()
                .frame(width: SizeConstants.cardWidth)
                .padding(.horizontal)
            
            
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .rotationEffect(.degrees(degrees))
        .offset(x: xOffset)
        .animation(.snappy, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width) / 25
    }
    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value){
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.screenCutOff) {
            xOffset = 0
            degrees = 0
        }
    }
}

#Preview {
    CardView()
}
