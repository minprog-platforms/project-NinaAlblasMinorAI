//
//  AdaptiveDimensions.swift
//  TipsyTimer
//
//  Created by Nina Alblas on 16/05/2022.
//

/* These functions uses the screen dimensions of the screen on which this app was designed (iPhone 11 Pro Max) to determine the width and height of views (buttons, shapes etc.) on different screen sizes.
 
    In some cases views are square. In these cases only one of the two functions is used, so the converted view remains square.
 */

import Foundation
import SwiftUI

// determine the width and height of the screen on which this app was designed
let originalScreenWidth: Double = 414
let originalScreenHeight: Double = 896

func convertWidth(_ width: Double) -> CGFloat {
    return Double(width / originalScreenWidth) * UIScreen.main.bounds.width
}

func convertHeight(_ height: Double) -> CGFloat {
    return Double(height / originalScreenHeight) * UIScreen.main.bounds.height
}
