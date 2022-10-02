//
//  KonumServis.swift
//  RestaurantApp
//
//  Created by Oğuzhan Erdem on 1.10.2022.
//

import Foundation
import CoreLocation

enum Sonuc<K> {
    case basarili(K)
    case hatali(Error)
    
    
}

final class KonumServis : NSObject {
  
    private let manager : CLLocationManager
    
    init(manager : CLLocationManager = .init()) {
        self.manager = manager
        super.init()
        self.manager.delegate = self
        
        let konum: CLAuthorizationStatus
        if #available(iOS 14, *) {
            konum = manager.authorizationStatus
        } else {
            konum = CLLocationManager.authorizationStatus()
        }
        
    }
    
    
    var yeniKonum: ((Sonuc<CLLocation>)-> Void)?
    var konumDegisikligi : ((Bool) -> Void)?
   



    
    
    func izinIste() {
        manager.requestWhenInUseAuthorization()
    }
    func konumAl() {
        manager.requestLocation()
    }
}

extension KonumServis : CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        yeniKonum?(.hatali(error))
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let konum = locations.sorted(by: {$0.timestamp > $1.timestamp}).first {
            yeniKonum?(.basarili(konum))
        }
    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
       
        switch manager {    
            case .denied, .notDetermined, .restricted :
                konumDegisikligi?(false)
                break
                
            default:
                konumDegisikligi?(true)
            }
            
        }
}

