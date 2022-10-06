//
//  HomeViewModel.swift
//  Crypto-Boy
//
//  Created by Aurelio Le Clarke on 05.10.2022.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
   @Published var coins = [Coin]()
    @Published var topCoins = [Coin]()
    
    enum NetworkError: Error {
        case badURL
        case requestError
        case noData
        case custom(Error)
        case decodingError
    }
    
    struct Something {
        
        
    }
    
    init() {
        fetchData { (result) in
            switch result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error)
            }
        }
    }
     
    
    func fetchData(completion: @escaping (Result<[Coin],NetworkError>)-> Void) {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.badURL))
            return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(.custom(error)))
             
            }
            else if (response as? HTTPURLResponse)?.statusCode != 200 {
                completion(.failure(.requestError))
            }
        
            guard let data = data else {
                completion(.failure(.noData))
                return }
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configureTopMovers()
                }
               
                //print("Debug coins: \(coins)")
            }catch let error{
               print("Decoding error specific: \(error)")
                completion(.failure(.decodingError))
            }
      
        }.resume()
    }
    func configureTopMovers() {
        let topMovers = coins.sorted(by: {$0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topCoins = Array(topMovers.prefix(5))
    }
}
