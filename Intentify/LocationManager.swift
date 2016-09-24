//
//  LocationManager.swift
//  Intentify
//
//  Created by Kelvin Lau on 2016-09-23.
//  Copyright © 2016 Kelvin. All rights reserved.
//

import CoreLocation

protocol LocationManagerDelegate: class {
  func didUpdateLocations(locations: [CLLocation])
}

final class LocationManager: NSObject {
  static let sharedInstance = LocationManager()
  
  fileprivate let locationManager = CLLocationManager()
  weak var delegate: LocationManagerDelegate?
  
  private override init() {
    super.init()
    
    locationManager.requestAlwaysAuthorization()
    locationManager.delegate = self
  }
}

// MARK: - Methods
extension LocationManager {
  func getCurrentLocation() {
    locationManager.requestLocation()
  }
}
// MARK: - CLLocationManagerDelegate
extension LocationManager: CLLocationManagerDelegate {
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    delegate?.didUpdateLocations(locations: locations)
  }
  
  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    print("locationManager failed with error: \(error)")
  }
}

