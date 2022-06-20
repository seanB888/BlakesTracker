//
//  CircleButtonView.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 5/12/22.
//

import SwiftUI

struct CircleButtonView: View {
    let imageIcon: String

    var body: some View {
        Image(systemName: imageIcon)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: 10, x: 0, y: 0)
            .padding()

    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleButtonView(imageIcon: "hear.fill")
                .previewLayout(.sizeThatFits)

            CircleButtonView(imageIcon: "heart.fill")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
