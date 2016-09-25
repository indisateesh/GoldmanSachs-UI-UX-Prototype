//
//  LocationsVC.swift
//  GoldmanSachs
//
//  Created by Lakshay Sharma on 9/24/16.
//  Copyright © 2016 Lakshay Sharma. All rights reserved.
//

import UIKit
import MapKit

class LocationsVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    
    @IBOutlet weak var map: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        map.delegate = self
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        map.showsUserLocation = true
        
        addAnnotation(title: "Goldman Sachs", subtitle: "Alpharetta", location: CLLocationCoordinate2D(latitude: 34.063173, longitude: -84.290535))
        addAnnotation(title: "Goldman Sachs", subtitle: "Atlanta", location: CLLocationCoordinate2D(latitude: 33.850753, longitude: -84.364029))

        
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func backToUserLocation(_ sender: AnyObject) {
        locationManager.startUpdatingLocation()
    }
 
    
    
    
    func addAnnotation(title: String, subtitle: String, location: CLLocationCoordinate2D) {
        let annotation = MKPointAnnotation()
        annotation.title = title
        annotation.subtitle = subtitle
        annotation.coordinate = location
        map.addAnnotation(annotation)
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lastLocation = locations[locations.count - 1]
        animateMap(location: lastLocation)
        locationManager.stopUpdatingLocation()
    }
    
    func animateMap(location: CLLocation) {
        let region = MKCoordinateRegionMakeWithDistance(location.coordinate, 50000, 50000)
        map.setRegion(region, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
  
   /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
