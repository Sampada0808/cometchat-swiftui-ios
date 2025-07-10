//
//  Color+Helper.swift
//  cometchat-swiftui-ios
//
//  Created by Sampada Shankar on 10/07/25.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: String) {
        self.init(UIColor(hex: hex))
    }

    init(light: String, dark: String) {
        self.init(UIColor { traitCollection in
            return traitCollection.userInterfaceStyle == .dark
                ? UIColor(hex: dark)
                : UIColor(hex: light)
        })
    }
}

extension UIColor {
    convenience init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let r = CGFloat((rgb & 0xFF0000) >> 16) / 255
        let g = CGFloat((rgb & 0x00FF00) >> 8) / 255
        let b = CGFloat(rgb & 0x0000FF) / 255

        self.init(red: r, green: g, blue: b, alpha: 1)
    }
}
