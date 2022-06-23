//
//  CoinDetailDataService.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 6/17/22.
//

import Foundation
import Combine

class CoinDetailDataService {

    @Published var coinDetails: CoinDetailModel? = nil

    var coinDetailSubscription: AnyCancellable?
    let coin: CoinModel

    init(coin: CoinModel) {
        self.coin = coin
        getCoinsDetails()
    }

    func getCoinsDetails() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/\(coin.id)?localization=true&tickers=true&market_data=true&community_data=true&developer_data=true&sparkline=false") else { return }
        // guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/bitcoin?localization=true&tickers=true&market_data=true&community_data=true&developer_data=true&sparkline=false") else { return }

        coinDetailSubscription = NetworkingManager.download(url: url)
            .decode(type: CoinDetailModel.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoinDetails) in
                self?.coinDetails = returnedCoinDetails
                self?.coinDetailSubscription?.cancel()
            })
    }

}
