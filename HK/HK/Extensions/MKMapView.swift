//
//  MKMapView.swift
//  HK
//
//  Created by Cedric Bahirwe on 11/26/20.
//  Copyright © 2020 Cedric Bahirwe. All rights reserved.
//

import Foundation
import MapKit


extension MKMapView {
    
    // This method will move the mapview to an offset center
    func moveCenterByOffSet(offSet: CGPoint, coordinate: CLLocationCoordinate2D) {
        var point = self.convert(coordinate, toPointTo: self)
        
        point.x += offSet.x
        point.y += offSet.y
        
        let center = self.convert(point, toCoordinateFrom: self)
        self.setCenter(center, animated: true)
    }
    
    // This method is used to calculate a CLLocation Coordinate by a set amount
    func centerCoordinateByOffSet(offSet: CGPoint) -> CLLocationCoordinate2D {
        var point = self.center
        
        point.x += offSet.x
        point.y += offSet.y
        
        return self.convert(point, toCoordinateFrom: self)
    }
    
    // This method will disable the map view
    func disable(){
        
        // fade map view
        UIView.animate(withDuration:0.5) { self.layer.opacity = 0.4 }
        // disable user interaction
        self.isScrollEnabled = false
        self.isZoomEnabled = false
        self.isRotateEnabled = false
        
    }
    
    // This method will enable the map view
    func enable() {
        // fade in map view
        UIView.animate(withDuration: 0.5) { self.layer.opacity = 1 }
        // restore user interaction
        self.isScrollEnabled = true
        self.isZoomEnabled = true
        self.isRotateEnabled = true
        
    }
    
}
