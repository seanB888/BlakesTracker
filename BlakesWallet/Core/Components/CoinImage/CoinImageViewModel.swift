//
//  CoinImageViewModel.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 5/16/22.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false

    var cancelables = Set<AnyCancellable>()

    private let coin: CoinModel
    private let dataService: CoinImageService

    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
        self.isLoading = true
    }

    private func addSubscribers() {
        // The "$" makes it a publisher...
        dataService.$image
            .sink { [weak self ](_) in
                self?.isLoading = false
            } receiveValue: { [ weak self ] (returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &cancelables)
    }
}
