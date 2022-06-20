//
//  CloseButton.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 5/24/22.
//

import SwiftUI

struct CloseButton: View {
    @Environment(\.presentationMode) var closeButtonAction

    
    var body: some View {
        Button(action: {
            closeButtonAction.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .padding()
        })
    }
}

struct CloseButton_Previews: PreviewProvider {
    static var previews: some View {
        CloseButton()
    }
}
