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
    
    var locations = [Location]()
    var managedObjectContext: NSManagedObjectContext!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        updateLocations()
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
    
    
    
    // MARK: - Helper methods
    func updateLocations() {
        mapView.removeAnnotations(locations)
        
        let entity = Location.entity()
        
        let fetchRequest = NSFetchRequest<Location>()
        fetchRequest.entity = entity
        
        locations = try! managedObjectContext.fetch(fetchRequest)
        mapView.addAnnotations(locations)
    }
}



extension MapViewController: MKMapViewDelegate {
    
}
