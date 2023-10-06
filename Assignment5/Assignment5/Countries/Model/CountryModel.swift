//
//  CountryModel.swift
//  Assignment5
//
//  Created by River on 10/6/23.
//

import Foundation

struct Country: Codable, Identifiable {
    var id: Int { return UUID().hashValue }
    var name: CountryName
    var capital: [String]?
    var flag: String
    var population: Int
    var currencies : [String:CurDetails]?
    
}

struct CountryName: Codable {
    var common: String
    var official: String
}


struct CurDetails: Codable{
    var name: String?
    var symbol: String?
}

