//
//  LocationManager.swift
//  UbarApp
//
//  Created by Prabhu Devar on 22/07/25.
//

import CoreLocation

class LocationManager:NSObject,ObservableObject{
    private let locationMangaer = CLLocationManager()
    
    override init() {
        super .init()
        locationMangaer.delegate = self
        locationMangaer.desiredAccuracy = kCLLocationAccuracyBest
        locationMangaer.requestWhenInUseAuthorization()
        locationMangaer.startUpdatingLocation()
    }
}

extension LocationManager:CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else{return}
        locationMangaer.stopUpdatingLocation()
    }
}
