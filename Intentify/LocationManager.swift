//
//  LocationManager.swift
//  Intentify
//
//  Created by Kelvin Lau on 2016-09-23.
//  Copyright © 2016 Kelvin. All rights reserved.
//

import CoreLocation

final class LocationManager: NSObject {
  static let sharedInstance = LocationManager()
  
  fileprivate let locationManager = CLLocationManager()
  
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
    print(locations)
  }
}

