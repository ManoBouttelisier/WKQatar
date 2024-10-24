//
//  WKResultsDatastore.swift
//  WKQatarApp
//
//  Created by Mano Bouttelisier on 24/10/2024.
//
import Foundation
@Observable

class WKResultsDatastore: ObservableObject {
    var results : [WKResult]
        
    init() {
        results = load("WKResultsQatar.json")
    }
    
    func getAllLocations() -> [String] {
        let resultsFiltered = results.filter{
            wkresult in wkresult.group != nil
        }
        let locations = resultsFiltered.map {
            wkresult in wkresult.homeTeam
        }
        return Array(Set(locations)).sorted()
    }
}
