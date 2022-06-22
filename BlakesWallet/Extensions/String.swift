//
//  String.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 6/21/22.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
