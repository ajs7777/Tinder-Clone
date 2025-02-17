//
//  CardStackView.swift
//  Tinder Clone
//
//  Created by Abhijit Saha on 07/01/25.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack{
            ForEach(0..<10){ card in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
