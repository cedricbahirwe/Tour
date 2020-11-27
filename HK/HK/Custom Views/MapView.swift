//
//  MapView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/27/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import Foundation
import MapKit
import SwiftUI


struct MapView: UIViewRepresentable {
    let defaultLocation = CLLocationCoordinate2D(latitude: -1.9496959999999999, longitude: 30.1006848)
    @Binding var setLocation: Bool
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        if setLocation {
        uiView.removeAnnotations(uiView.annotations)
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        
            DispatchQueue.main.async {
                let region = MKCoordinateRegion(center:self.defaultLocation, span: span)
                uiView.setRegion(region, animated: true)
                let placeAnnotation = MKPointAnnotation()
                placeAnnotation.coordinate = self.defaultLocation
                placeAnnotation.title = "Guhemba HQ"
                placeAnnotation.subtitle = "Software Company"
                uiView.addAnnotation(placeAnnotation)
            }
            
        }
//        let sourcePlacemark = MKPlacemark(coordinate: requestLocation)
//        let destinationPlacemark = MKPlacemark(coordinate: destinationLocation)
    }
    
}


extension MapView {
    // Use this in case he pin is not well center of the map
    func addEventLocationPin(mapView:MKMapView, coordinate: CLLocationCoordinate2D, title: String, subtitle: String = "") {
        let location = CLLocationCoordinate2D(latitude: coordinate.latitude,longitude: coordinate.longitude)
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = title
        annotation.subtitle = subtitle
        mapView.addAnnotation(annotation)
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 400, longitudinalMeters: 400)
        mapView.setCenter(coordinate, animated: false)
        mapView.setRegion(region, animated: false)
        mapView.moveCenterByOffSet(offSet: CGPoint(x: 0, y: 100), coordinate: coordinate)
    }
}
