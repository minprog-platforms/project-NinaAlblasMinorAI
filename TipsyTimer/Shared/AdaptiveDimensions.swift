//
//  AdaptiveDimensions.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 16/05/2022.
//

import Foundation
import SwiftUI

// Uses the dimensions of the screen this application was built on (iPhone 11 Pro Max) to determine the dimensions of views on different screen sizes

func getFrameWidth(_ originalWidth: Double) -> CGFloat {
    // the layout was designed on an iPhone 11 Pro Max with a screen width of 414
    return Double(originalWidth / 414) * UIScreen.main.bounds.width
}

func getFrameHeight(_ originalHeight: Double) -> CGFloat {
    // the layout was designed on an iPhone 11 Pro Max with a screen height of 896
    return Double(originalHeight / 896) * UIScreen.main.bounds.height
}

func getOffsetX(_ originalOffsetX: Double) -> CGFloat {
    // the layout was designed on an iPhone 11 Pro Max with a screen width of 414
    return Double(originalOffsetX / 414) * UIScreen.main.bounds.width
}

func getOffsetY(_ originalOffsetY: Double) -> CGFloat {
    // the layout was designed on an iPhone 11 Pro Max with a screen height of 896
    return Double(originalOffsetY / 896) * UIScreen.main.bounds.height
}
