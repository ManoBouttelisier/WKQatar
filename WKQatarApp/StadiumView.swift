//
//  StadiumView.swift
//  WKQatarApp
//
//  Created by Mano Bouttelisier on 24/10/2024.
//

import SwiftUI

struct StadiumView: View {
    @Binding var selectedCountry: String

    var body: some View {
        Text(selectedCountry)
            .font(.largeTitle)
            .padding()
    }
}

