//
//  WKQatarAppApp.swift
//  WKQatarApp
//
//  Created by Mano Bouttelisier on 24/10/2024.
//

import SwiftUI

@main
struct WKQatarAppApp: App {
    var body: some Scene {
        @State var datastore = WKResultsDatastore()
        WindowGroup {
            ContentView()
                .environment(datastore)
        }
    }
}
