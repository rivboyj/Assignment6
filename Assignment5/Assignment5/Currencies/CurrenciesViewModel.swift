//
//  CurrenciesViewModel.swift
//  Assignment5
//
//  Created by River on 10/6/23.
//

import Foundation
import SwiftUI  

class CurrenciesViewModel: ObservableObject {
    @Published var countries =  [Country]()
    func getAllCountries() async -> () {
        do {
            let url = URL(string: "https://restcountries.com/v3.1/all")!
            let (data, _) = try await URLSession.shared.data(from: url)
            print(data)
            countries = try JSONDecoder().decode([Country].self, from: data)
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
    func fetchCurrencies(currencies: [String:CurDetails]) -> String {
                if let key = currencies.keys.first, //gets first keys in currencies, NZD ex
                    let currencyType = currencies[key] { //gets value of NZD, which is another dictionary, we unpack as curDetails
                    let name = currencyType.name
                    let symbol = currencyType.symbol
                    return "\(name ?? "N/A") \(symbol ?? "N/A")"
                }
                return ""
            }
    
}
