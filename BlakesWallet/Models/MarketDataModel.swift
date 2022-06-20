//
//  MarketDataModel.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 5/22/22.
//

import Foundation
import UIKit

//JSON Data:
/* URL: https://api.coingecko.com/api/v3/global

 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 13417,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 808,
     "total_market_cap": {
       "btc": 44677567.74375509,
       "eth": 665603629.2833296,
       "ltc": 18875496651.961582,
       "bch": 6779630298.569118,
       "bnb": 4218322682.5290747,
       "eos": 989779433623.0222,
       "xrp": 3209221000324.9375,
       "xlm": 10025260133960.793,
       "link": 184411659036.31976,
       "dot": 133802654947.8216,
       "yfi": 142223399.66013494,
       "usd": 1341025576058.2224,
       "aed": 4925586940861.861,
       "ars": 158835827187079.75,
       "aud": 1900956054059.9956,
       "bdt": 117401548455946.2,
       "bhd": 505561278071.64435,
       "bmd": 1341025576058.2224,
       "brl": 6546484554643.424,
       "cad": 1721796378124.192,
       "chf": 1306428457221.4968,
       "clp": 1121767894372703.9,
       "cny": 8975484180557.697,
       "czk": 31206068803573.203,
       "dkk": 9439108906814.848,
       "eur": 1268409041114.667,
       "gbp": 1073808796696.1333,
       "hkd": 10523899361953.322,
       "huf": 487373618696355.44,
       "idr": 19676122602912788,
       "ils": 4503084763894.503,
       "inr": 104356732893044.53,
       "jpy": 171470203580839.84,
       "krw": 1708124622376280.5,
       "kwd": 410581800621.74585,
       "lkr": 476466762660646,
       "mmk": 2485059429967611,
       "mxn": 26666293579917.742,
       "myr": 5885761253319.547,
       "ngn": 556686537133289.56,
       "nok": 13180276579416.111,
       "nzd": 2098393908597.4697,
       "php": 70058535362349.54,
       "pkr": 268808576720870.72,
       "pln": 5874193566700.454,
       "rub": 83143592420737.61,
       "sar": 5030186935794.409,
       "sek": 13331537559267.62,
       "sgd": 1851627769270.2712,
       "thb": 46047585069175.625,
       "try": 21329011787206.016,
       "twd": 39867349350634.87,
       "uah": 39651834471332.125,
       "vef": 134276890930.70975,
       "vnd": 31064857469388720,
       "zar": 21320630377355.664,
       "xdr": 977940219289.3082,
       "xag": 61635104475.5599,
       "xau": 726138528.9240055,
       "bits": 44677567743755.086,
       "sats": 4467756774375508.5
     },
     "total_volume": {
       "btc": 2094561.6107756274,
       "eth": 31204648.78226646,
       "ltc": 884915913.468652,
       "bch": 317840788.4708332,
       "bnb": 197762259.6504142,
       "eos": 46402570898.49762,
       "xrp": 150453828335.7008,
       "xlm": 470001525935.0979,
       "link": 8645537371.512583,
       "dot": 6272899771.110266,
       "yfi": 6667678.840322662,
       "usd": 62869597261.6468,
       "aed": 230920030742.02917,
       "ars": 7446498161000.532,
       "aud": 89120106032.67749,
       "bdt": 5503987545871.082,
       "bhd": 23701586689.251736,
       "bmd": 62869597261.6468,
       "brl": 306910512952.18115,
       "cad": 80720790708.11868,
       "chf": 61247624521.89359,
       "clp": 52590418109367.586,
       "cny": 420786214472.20264,
       "czk": 1462994452027.2954,
       "dkk": 442521743115.8882,
       "eur": 59465208569.9285,
       "gbp": 50342012702.49929,
       "hkd": 493378594950.36304,
       "huf": 22848917776390.684,
       "idr": 922450642106325.5,
       "ils": 211112398298.37054,
       "inr": 4892424041465.194,
       "jpy": 8038819567623.182,
       "krw": 80079835164036.3,
       "kwd": 19248784593.598396,
       "lkr": 22337585510550.258,
       "mmk": 116503882045675.56,
       "mxn": 1250161941547.846,
       "myr": 275934662381.36816,
       "ngn": 26098427215254.83,
       "nok": 617914151034.0814,
       "nzd": 98376333967.9124,
       "php": 3284465249289.568,
       "pkr": 12602210771097.102,
       "pln": 275392349235.38855,
       "rub": 3897915344570.0845,
       "sar": 235823859328.43793,
       "sek": 625005527257.2098,
       "sgd": 86807510767.00514,
       "thb": 2158790391365.96,
       "try": 999940944446.4918,
       "twd": 1869050256991.4963,
       "uah": 1858946546885.1743,
       "vef": 6295132773.80869,
       "vnd": 1456374220566048,
       "zar": 999548009463.607,
       "xdr": 45847528063.86148,
       "xag": 2889560247.5740833,
       "xau": 34042629.52523647,
       "bits": 2094561610775.6274,
       "sats": 209456161077562.75
     },
     "market_cap_percentage": {
       "btc": 42.631389670182514,
       "eth": 18.15822820611493,
       "usdt": 5.462343061230849,
       "bnb": 3.985443610643623,
       "usdc": 3.9666884027516334,
       "xrp": 1.5063381537401526,
       "busd": 1.3822982559649195,
       "ada": 1.3556205858458426,
       "sol": 1.306785875018775,
       "doge": 0.8485912176511229
     },
     "market_cap_change_percentage_24h_usd": 1.5404205145925107,
     "updated_at": 1653247358
   }
 }

*/

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
//    let activeCryptocurrencies, upcomingIcos, ongoingIcos, endedIcos: Int
//    let markets: Int
//    let updatedAt: Int
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }

    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }

    var valume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }

    var btcDominance : String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
