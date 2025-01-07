//
//  ImageScrollingOverlay.swift
//  Tinder Clone
//
//  Created by Abhijit Saha on 07/01/25.
//

import SwiftUI

struct ImageScrollingOverlay: View {
    
    @Binding var currrentImageIndex: Int
    let imageCount: Int
    
    var body: some View {
        HStack{
            Rectangle()
                .onTapGesture {
                    updateimageIndex(increment: false)
                }
            Rectangle()
                .onTapGesture {
                    updateimageIndex(increment: true)
                }
        } .foregroundStyle(.white.opacity(0.01))
    }
    
    private func updateimageIndex(increment: Bool){
        if increment {
            guard currrentImageIndex < imageCount - 1 else { return }
            currrentImageIndex += 1
        } else {
            guard currrentImageIndex > 0 else { return }
            currrentImageIndex -= 1
        }
    }
}

#Preview {
    ImageScrollingOverlay(currrentImageIndex: .constant(1), imageCount: 1)
}
