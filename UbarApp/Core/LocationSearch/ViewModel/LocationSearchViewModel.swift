//
//  LocationSearchViewModel.swift
//  UbarApp
//
//  Created by Prabhu Devar on 23/07/25.
//

import MapKit

class LocationSearchViewModel:NSObject,ObservableObject{
    
    // MARK: - properties
    
    @Published var result = [MKLocalSearchCompletion]()
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment :String = ""{
        didSet{
            searchCompleter.queryFragment = queryFragment
        }
    }
    
    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }
    
}

// MARK: - MKLocalSearchCompleterDelegate
extension LocationSearchViewModel:MKLocalSearchCompleterDelegate{
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.result = completer.results
    }
}
