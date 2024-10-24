import SwiftUI

struct ContentView: View {
    var wkResultDatastore = WKResultsDatastore()
    @State var selectedCountry: String = ""

    var body: some View {
        VStack {
            Text("⚽️ WK QATAR 2022 ⚽️")
                .font(.largeTitle)
            Text("Select your favorite team...")
                .multilineTextAlignment(.leading)
                .lineLimit(0)
            
            
            NavigationStack {
                List(wkResultDatastore.getAllLocations(),id: \.self, selection: $selectedCountry) { country in
                                    if(selectedCountry == country){
                                        Text(country).foregroundStyle(Color.red).selectionDisabled()
                                    }else{
                                        Text(country)
                                    }
                                    
                                }
                if(selectedCountry != ""){
                    NavigationLink(destination: StadiumView(selectedCountry: $selectedCountry)) {
                        Text("Next")
                    }
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
