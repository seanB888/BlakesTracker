//
//  MarketDataService.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 5/22/22.
//

import Foundation
import Combine

class MarketDataService {

    @Published var marketData: MarketDataModel? = nil

    var marketDataSubscription: AnyCancellable?

    init() {
        getData()
    }

    func getData() {
        // get request
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }

        // Combine formula...
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedGlobalData) in
                self?.marketData = returnedGlobalData.data
                self?.marketDataSubscription?.cancel()
            })

    }

}
