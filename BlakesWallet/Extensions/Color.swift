//
//  Color.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 5/12/22.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
    static let launch = LaunchTheme()

}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

struct LaunchTheme {
    
    let background = Color("LaunchBackgroundColor")
    let accent = Color("LaunchAccentColor")
}
