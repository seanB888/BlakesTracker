//
//  HapticManager.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 6/15/22.
//

import Foundation
import SwiftUI

class HapticManager {

    static private let generator = UINotificationFeedbackGenerator()

    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
