//
//  SizeConstants.swift
//  Tinder Clone
//
//  Created by Abhijit Saha on 07/01/25.
//

import SwiftUI

struct SizeConstants {
    static var screenCutOff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }
    static var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
    static var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
}
