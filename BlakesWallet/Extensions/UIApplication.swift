//
//  UIApplication.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 5/16/22.
//

import Foundation
import SwiftUI

extension UIApplication {

    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
