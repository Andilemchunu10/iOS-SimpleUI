import UIKit
import CoreLocation

class ViewController: UIViewController {

    var locationManager: CLLocationManager!

//    @IBOutlet weak var locationButton: UIButton!

    
    @IBOutlet weak var locationButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
    }

    @IBAction func locationButtonTapped(_ sender: UIButton) {
        locationManager.startUpdatingLocation()
    }
}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let currentLocation = locations.last {
            // Handle the current location
            let latitude = currentLocation.coordinate.latitude
            let longitude = currentLocation.coordinate.longitude
            
            // Do something with the latitude and longitude values
            print("Latitude: \(latitude), Longitude: \(longitude)")
            
            // Stop updating location after getting the current location
            locationManager.stopUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        // Handle location update errors
        print("Location update failed: \(error.localizedDescription)")
    }
}
