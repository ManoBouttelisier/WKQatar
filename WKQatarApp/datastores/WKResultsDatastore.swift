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
    
    //retourneert alle teams/landen
    func getAllCountries() -> [String] {
        let resultsFiltered = results.filter{
            wkresult in wkresult.group != nil
        }
        let locations = resultsFiltered.map {
            wkresult in wkresult.homeTeam
        }
        return Array(Set(locations)).sorted()
    }
    
    //retourneert object vna type wkresult
    func getAllResultByLocation(location: String) -> [WKResult] {
            print("getAllResultsByLocation")
            var resultsFiltered = results.filter {
                wkResult in wkResult.location.elementsEqual(location)
            }
            resultsFiltered.sort { el1, el2 in
                el1.dateUTC < el2.dateUTC
            }
            return resultsFiltered
        }
    
    //retourneert alle stadiums van Qatar
    func getAllLocations() -> [String] {
        let resultsFiltered = results.filter{
            wkresult in wkresult.group != nil
        }
        let locations = resultsFiltered.map {
            wkresult in wkresult.location
        }
        return Array(Set(locations)).sorted()
    }
}
