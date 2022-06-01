//
//  AdaptiveDimensions.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 16/05/2022.
//

import Foundation
import SwiftUI

// Uses the dimensions of the screen this application was built on (iPhone 11 Pro Max) to determine the dimensions of views on different screen sizes

let originalScreenWidth: Double = 414
let originalScreenHeight: Double = 896


func convertWidth(_ width: Double) -> CGFloat {
    // the layout was designed on an iPhone 11 Pro Max with a screen width of 414
    return Double(width / originalScreenWidth) * UIScreen.main.bounds.width
}

func convertHeight(_ height: Double) -> CGFloat {
    // the layout was designed on an iPhone 11 Pro Max with a screen height of 896
    return Double(height / originalScreenHeight) * UIScreen.main.bounds.height
}
