//
//  ListStadiumView.swift
//  QatarWK
//
//  Created by Milan Goens on 05/11/2024.
//

import SwiftUI

struct ListStadionView: View {
    @Environment(WKResultsDatastore.self) private var wkResultDatastore
    @Binding var selectedLocation: String
    var body: some View {
  //      let wkResultDatastore = WKResultsDatastore()
        NavigationStack {
            List(wkResultDatastore.getAllLocations(),id: \.self, selection: $selectedLocation) { country in
                                if(selectedLocation == country){
                                    Text(country).foregroundStyle(Color.red).selectionDisabled()
                                }else{
                                    Text(country)
                                }
                                
                            }
        }
    }
}
