//
//  SettingsView.swift
//  BlakesWallet
//
//  Created by SEAN BLAKE on 6/21/22.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://ucleus.co")!
    let support = URL(string: "https://ucleus.co/contact")!
    let personalURL = URL(string: "https://seanblake.info")!
    let coingecko = URL(string: "https://www.coingecko.com/")!
    let coingeckoFacebook = URL(string: "https://www.facebook.com/coingecko")!
    let discord = URL(string: "https://discord.com/")!
    let twitter = URL(string: "https://twitter.com/ucleus")!
    let github = URL(string: "https://github.com/seanB888")!
    
    var body: some View {
        NavigationView {
            List {
                ucleusSection
                // coinGecko section
                coinGeckoSection
                // section about me
                developerSection
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        CloseButton()
                    }
                }
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var ucleusSection: some View {
        Section(header: Text("Ucleus")) {
            VStack(alignment: .leading) {
                
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                Text("This app was inspired by @SwiftfulThinking from the YouTube course. It takes advantage of MVVM Architecture, Combine, and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("About Ucleus", destination: defaultURL)
            Link("Meet the developer", destination: personalURL)
            Link("Need support", destination: support)
        }
    }
    
    private var coinGeckoSection: some View {
        
        Section(header: Text("Coingecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                Text("The cryptocurrency data that you see here is courtesy of CoinGecko's free API. The prices may be slightly delayed because this is a free API service.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("CoinGecko", destination: coingecko)
            Link("facebook", destination: coingeckoFacebook)
        }
    }
    
    
    private var developerSection: some View {
        
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                HStack {
                    Image("sean")
                        .resizable()
                        .frame(width: 105, height: 100)
                    .clipShape(Circle())
                    
                    Text("Sean Blake")
                }
                Text("This app was developed by Sean Blake. It uese SwiftUI and is written 100% in Swift. This project is benifitting from multi-threading, publishers/subscribers, and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Resume", destination: personalURL)
            Link("Descord", destination: discord)
            Link("Github", destination: github)
        }
    }
    
}
