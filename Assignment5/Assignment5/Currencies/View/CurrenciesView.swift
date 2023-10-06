//
//  CurrenciesView.swift
//  Assignment5
//
//  Created by River on 10/6/23.
//

import Foundation
import SwiftUI

struct OneView: View {
    @ObservedObject var viewModel = CurrenciesViewModel()

    
    
    
    var body: some View {
        NavigationView {
            List(viewModel.countries) { country in
                VStack(alignment: .leading) {
                    Text("\(viewModel.fetchCurrencies(currencies:country.currencies!)) • \(country.name.common)")
                }
            }
            .task {
                await viewModel.getAllCountries()
            }
        }
        .navigationTitle("Countries")
    }
}
