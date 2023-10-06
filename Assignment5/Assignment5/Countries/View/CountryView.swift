//
//  CountryView.swift
//  Assignment5
//
//  Created by River on 10/6/23.
//

import Foundation
import SwiftUI

struct CountriesView: View {
    @ObservedObject var viewModel = CountryViewModel()

   
    
    var body: some View {
        NavigationView {
            List(viewModel.countries) { country in
                VStack(alignment: .leading) {
                    Text("\(country.flag) • \(country.name.common)")
                }
            }
            .task {
                await viewModel.getAllCountries()
            }
        }
        .navigationTitle("Countries")
    }
}
