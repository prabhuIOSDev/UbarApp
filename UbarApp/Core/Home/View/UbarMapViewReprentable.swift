//
//  UbarMapViewReprentable.swift
//  UbarApp
//
//  Created by Prabhu Devar on 22/07/25.
//

import SwiftUI
import MapKit

// new code


struct UbarMapViewReprentable: UIViewRepresentable {
    
    let mapView = MKMapView()
    let locationMnager = LocationManager()
    func makeUIView(context: Context) -> MKMapView {
        mapView.delegate = context.coordinator
        mapView.mapType = .standard
        mapView.showsUserLocation = true
        mapView.isRotateEnabled = false
        mapView.userTrackingMode = .follow
        return mapView
    }
    
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    
    func makeCoordinator() -> MapCoordinater{
        return MapCoordinater(present: self)
        
    }
    
}

extension UbarMapViewReprentable{

    class MapCoordinater: NSObject, MKMapViewDelegate{
        
        let parent : UbarMapViewReprentable
        
         init(present : UbarMapViewReprentable){
            self.parent = present
            super.init()
        }
        
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let regin = MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )
            parent.mapView.setRegion(regin, animated: true)
        }
        
    }
    
    
}
