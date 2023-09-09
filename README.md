# BlakesWallet
Crypto app for tracking coins that use the CoinGecko API
You can check coins and the website or Reddit page for the coin to get more details.


![BlakesWallet](https://user-images.githubusercontent.com/88250197/184780517-c7867baa-cc68-4935-a00c-2f25f904e6ca.gif)

# 📁 Files Overview

- **BlakesWalletApp.swift**: 
  - Main entry point for the app.
  - Initializes the `HomeViewModel` and sets up the main view hierarchy.
  - Customizes the appearance of the navigation bar.
  - Starts with the `HomeView` and has a launch view that can be shown or hidden.

- **ContentView.swift**: 
  - Placeholder view displaying a green background.
  - Might not be actively used in the app.

- **CloseButton.swift**: 
  - Custom SwiftUI view for a close button.
  - Uses the system "xmark" image.
  - Dismisses the current view when tapped.

- **CircleButtonView.swift**: 
  - Custom button view that displays an image icon inside a circle.
  - Styled with a shadow and padding.

- **DetailView.swift**: 
  - Displays detailed information about a selected cryptocurrency.
  - Contains sections for an overview, description, statistics, and additional details.
  - Provides navigation bar items and various utility views.

- **HomeView.swift**: 
  - Represents the home screen of the app.
  - Features a header, stats view, search bar, and lists for coins.
  - Handles navigation to the detail view when a coin is selected.

- **SettingsView.swift**: 
  - Displays settings and information about the app.
  - Provides details about the data source (CoinGecko) and the developer.
  - Contains links to various websites and resources.

- **CoinDataServices.swift**: 
  - Service class for fetching coin data from the CoinGecko API.
  - Downloads, decodes, and updates the `allCoins` property.

- **MarketDataService.swift**: 
  - Service class fetching global market data from the CoinGecko API.
  - Updates the `marketData` property with fetched data.

- **HapticManager.swift**: 
  - Utility class for managing haptic feedback.
  - Provides a method to trigger notification haptic feedback.

# 📝 Observations

1. The code is organized and follows the **MVVM architecture**, separating views, view models, and services.
2. The app heavily relies on the **CoinGecko API** for fetching cryptocurrency data.
3. Clear separation of concerns with different views handling specific functionalities and services dedicated to fetching data.
4. The use of **Combine** for networking is evident, a modern approach to handle asynchronous tasks in Swift.
