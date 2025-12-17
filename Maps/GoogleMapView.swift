//
//  GoogleMapView.swift
//  SmartCollect
//
//  Created by Sacheth D S on 17/12/25.
//

import Foundation
import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {

    let latitude: Double
    let longitude: Double

    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(
            withLatitude: latitude,
            longitude: longitude,
            zoom: 14
        )

        let mapView = GMSMapView(frame: .zero, camera: camera)

        // Add marker
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        marker.title = "Vehicle"

        // Optional: anchor image correctly
        marker.groundAnchor = CGPoint(x: 0.5, y: 0.5)
        //marker.rotation = 45   // degrees
        marker.isFlat = true
        marker.icon = UIImage(named: "vehicle_marker")?.scaled(to: CGSize(width: 40, height: 40))
        marker.map = mapView

        return mapView
    }

    func updateUIView(_ mapView: GMSMapView, context: Context) {
        // For future live updates
    }
}

extension UIImage {
    func scaled(to size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        draw(in: CGRect(origin: .zero, size: size))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}
