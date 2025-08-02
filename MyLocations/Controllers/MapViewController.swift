//
//  MapViewController.swift
//  MyLocations
//
//  Created by khamzaev on 02.08.2025.
//

import UIKit
import MapKit
import CoreData


class MapViewController: UIViewController {
    @IBOutlet var mapView: MKMapView!
    
    var managedObjectContext: NSManagedObjectContext!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Actions
    @IBAction func showUser() {
        let region = MKCoordinateRegion(
            center: mapView.userLocation.coordinate,
            latitudinalMeters: 1000,
            longitudinalMeters: 1000)
        mapView.setRegion(mapView.regionThatFits(region), animated: true)
    }
    
    @IBAction func showLocations() {
        
    }
}



extension MapViewController: MKMapViewDelegate {
    
}
