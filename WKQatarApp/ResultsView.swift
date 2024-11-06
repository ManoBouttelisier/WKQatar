//
//  ResultsView.swift
//  WKQatarApp
//
//  Created by Mano Bouttelisier on 05/11/2024.
//

import SwiftUI

struct ResultsView: View {
    @Binding var selectedCountry: String
    @State var selectedMatch: String
    @State var selectedLocation: String
    
    var body: some View {
        NavigationSplitView {
            // This is the content side (left side of the split view)
            ListStadionView(selectedLocation: $selectedLocation) // Replace this with your actual content view
        } content: {
            // Content view where you might show a list of stadiums or other content
            ListScoreView(selectedLocation: $selectedLocation, selectedMatch: $selectedMatch, selectedCountry: $selectedCountry) // Same here if you want it to be on the content section
        } detail: {
            // This is the detail side (right side of the split view)
            DetailGameView() // Replace this with your actual score list view
        }
        
    }
}

