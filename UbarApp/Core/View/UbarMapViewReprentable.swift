//
//  UbarMapViewReprentable.swift
//  UbarApp
//
//  Created by Prabhu Devar on 22/07/25.
//

import SwiftUI
import MapKit
// zxgc


struct UbarMapViewReprentable: UIViewRepresentable {
   
    
    
    
    
    let mapView = MKMapView()
    
    func makeUIView(context: Context) -> MKMapView {
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
        
        let present : UbarMapViewReprentable
        
         init(present : UbarMapViewReprentable){
            self.present = present
            super.init()
        }
        
    }
    
    
}
