import SwiftUI

struct ContentView: View {
    @Environment(WKResultsDatastore.self) private var wkResultDatastore
    @State var selectedCountry: String = ""
    @State var selectedMatch: String = ""
    @State var selectedLocation: String = ""
    var body: some View {

            
            NavigationStack {
                
                VStack {
                    Text("⚽️ WK QATAR 2022 ⚽️")
                        .font(.largeTitle)
                        .id("headerText")
                    Text("Select your favorite team...")
                        .multilineTextAlignment(.leading)
                        .lineLimit(0)
                        .id("headerText")
                    
                List(wkResultDatastore.getAllCountries(),id: \.self, selection: $selectedCountry) { country in
                                    if(selectedCountry == country){
                                        Text(country).foregroundStyle(Color.red).selectionDisabled()
                                    }else{
                                        Text(country)
                                    }
                                    
                                }
                if(selectedCountry != ""){
                    NavigationLink(destination: ResultsView(selectedCountry: $selectedCountry, selectedMatch: selectedMatch, selectedLocation: selectedLocation)) {
                        Text("Next")
                        
                    }
                }
                
            }
        }
        .padding()
    }
}
