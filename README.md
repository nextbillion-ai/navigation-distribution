# NextBillion.ai iOS Navigation SDK - Swift Package Manager Distribution

![iOS](https://img.shields.io/badge/iOS-12.0+-blue.svg)
![Swift](https://img.shields.io/badge/Swift-5.5.2+-orange.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

Swift Package Manager distribution repository for NextBillion.ai Navigation SDK. Through this repository, you can easily integrate the Navigation SDK into your iOS projects and add advanced turn-by-turn navigation capabilities.

## 📦 Integration via Swift Package Manager

### Method 1: Add in Xcode (Recommended)

1. Open your project in Xcode
2. Select menu **File > Add Packages...** (or **File > Swift Packages > Add Package Dependency...**)
3. Enter the repository URL in the search box:
   ```
   https://github.com/nextbillion-ai/navigation-distribution
   ```
4. Choose a version rule (recommended: "Up to Next Major Version")
5. Click **Add Package**
6. In the modal, update "Add to Target" to include your application.
7. Complete the installation by pressing "Add Package".

## 🛠️ Configuration

### 1. Add Access Key

Add your NextBillion.ai access key in your `Info.plist` file:

```xml
<key>NBMapAccessKey</key>
<string>YOUR_ACCESS_KEY_HERE</string>
```

**How to get an access key?**
Visit [NextBillion.ai Book-a-demo](https://nextbillion.ai/book-a-demo)

### 2. Configure Location Permissions

To enable background location tracking and audio guidance, add location permission descriptions in `Info.plist`:

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app requires access to your location to provide navigation guidance.</string>

<key>NSLocationAlwaysUsageDescription</key>
<string>This app requires access to your location to provide navigation guidance even when the app is in the background.</string>

<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>This app requires access to your location to provide continuous navigation guidance.</string>
```

## 🧭 Quick Start

### Basic Turn-by-Turn Navigation

```swift
import UIKit
import NbmapNavigation
import NbmapCoreNavigation
import NbmapDirections

class BasicNavigationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Define origin and destination coordinates
        let origin = CLLocation(
            latitude: 37.77440680146262, 
            longitude: -122.43539772352648
        )
        let destination = CLLocation(
            latitude: 37.76556957793795, 
            longitude: -122.42409811526268
        )
        
        // Create navigation route options
        let options = NavigationRouteOptions(
            origin: origin, 
            destination: destination
        )
        
        // Calculate route
        Directions.shared.calculate(options) { [weak self] routes, error in
            guard let strongSelf = self else { return }
            
            guard error == nil else {
                print("Error calculating route: \(error!)")
                return
            }
            
            guard let routes = routes else { return }
            
            // Initialize NBNavigationService with the fetched routes
            let navigationService = NBNavigationService(
                routes: routes, 
                routeIndex: 0
            )
            let navigationOptions = NavigationOptions(
                navigationService: navigationService
            )
            
            // Initialize the NavigationViewController
            let navigationViewController = NavigationViewController(
                for: routes,
                navigationOptions: navigationOptions
            )
            
            // Configure navigation view controller
            navigationViewController.modalPresentationStyle = .fullScreen
            
            // Enable route traversal tracking
            navigationViewController.routeLineTracksTraversal = true
            
            // Start navigation
            strongSelf.present(
                navigationViewController, 
                animated: true, 
                completion: nil
            )
        }
    }
}
```

### Calculate Route with Custom Options

```swift
import NbmapDirections

// Create custom route options
let origin = CLLocation(latitude: 37.7749, longitude: -122.4194)
let destination = CLLocation(latitude: 37.7849, longitude: -122.4094)

let options = NavigationRouteOptions(origin: origin, destination: destination)

// Configure routing preferences
options.includesAlternativeRoutes = true
options.routeShapeResolution = .full

// Calculate multiple routes
Directions.shared.calculate(options) { routes, error in
    guard let routes = routes, error == nil else {
        print("Error: \(error?.localizedDescription ?? "Unknown error")")
        return
    }
    
    print("Found \(routes.count) route(s)")
    for (index, route) in routes.enumerated() {
        print("Route \(index + 1): \(route.distance) meters, \(route.expectedTravelTime) seconds")
    }
}
```

### Navigation with Custom Styling

```swift
// Customize navigation appearance
let dayStyle = DayStyle()
navigationViewController.mapView?.styleURL = dayStyle.mapStyleURL

// Or use night style
let nightStyle = NightStyle()
navigationViewController.mapView?.styleURL = nightStyle.mapStyleURL
```

### Track Navigation Progress

```swift
class NavigationViewController: UIViewController, NavigationViewControllerDelegate {
    
    func navigationViewController(
        _ navigationViewController: NavigationViewController, 
        didUpdate progress: RouteProgress, 
        with location: CLLocation, 
        rawLocation: CLLocation
    ) {
        // Get current step information
        let currentStep = progress.currentLegProgress.currentStep
        print("Current instruction: \(currentStep.instructions)")
        
        // Get distance to next maneuver
        let distanceRemaining = progress.currentLegProgress.currentStepProgress.distanceRemaining
        print("Distance to next step: \(distanceRemaining) meters")
        
        // Get total trip progress
        let tripProgress = progress.fractionTraveled
        print("Trip progress: \(Int(tripProgress * 100))%")
    }
    
    func navigationViewController(
        _ navigationViewController: NavigationViewController, 
        didArriveAt waypoint: Waypoint
    ) {
        print("Arrived at destination!")
    }
}
```

## 🎯 Key Features

### ✅ Turn-by-Turn Navigation
Provides complete turn-by-turn navigation with voice guidance and visual instructions.

### ✅ Real-time Rerouting
Automatically recalculates routes when users deviate from the planned path.

### ✅ Background Location Tracking
Continues tracking user location even when the app is in the background.

### ✅ Customizable UI
Fully customizable navigation interface to match your app's design.

### ✅ Alternative Routes
Calculate and display multiple route options for users to choose from.

### ✅ Voice Guidance
Provides audible turn-by-turn instructions in multiple languages.

## 📱 System Requirements

- **iOS**: 12.0+
- **Xcode**: 13.2.1+
- **Swift**: 5.5.2+

## 🔗 Related Links

- [NextBillion.ai Official Documentation](https://docs.nextbillion.ai/routing/ios-navigation-sdk)
- [iOS Navigation SDK Getting Started](https://docs.nextbillion.ai/routing/ios-navigation-sdk/getting-started)
- [Navigation SDK API Reference](https://docs.nextbillion.ai/routing/ios-navigation-sdk/)
- [Routing API Documentation](https://docs.nextbillion.ai/routing/)

## 🐛 Troubleshooting

### 1. Navigation fails to start?
- Check if `NBMapAccessKey` is correctly configured in `Info.plist`
- Confirm that the access key is valid and not expired
- Verify that network connection is working properly
- Ensure route calculation was successful before starting navigation

### 2. Voice guidance not working?
- Verify that the device is not in silent mode
- Check that the app has necessary audio permissions
- Ensure volume is turned up on the device

### 3. Background location tracking not working?
- Ensure location permission descriptions are added in `Info.plist`
- Verify that "Always" location permission has been granted
- Check that background location capability is enabled in your app

### 4. Compilation errors?
- Confirm Xcode version ≥ 13.2.1
- Confirm iOS deployment target ≥ 12.0
- Confirm Swift version ≥ 5.5.2
- Try cleaning the build folder (Clean Build Folder)
- Delete derived data and rebuild

## 📚 Core Components

### NavigationViewController
The main view controller that provides the complete navigation UI, including map display, turn instructions, and voice guidance.

### NBNavigationService
Manages the navigation session, including route progress tracking, location updates, and rerouting logic.

### NavigationRouteOptions
Defines the origin, destination, and routing preferences for calculating a route.

### RouteProgress
Tracks the user's progress along the route, including distance traveled, time remaining, and current step information.

## 🤝 Support

If you have questions or suggestions, please:
- Visit [NextBillion.ai Official Documentation](https://docs.nextbillion.ai)
- Contact technical support: [support@nextbillion.ai](mailto:support@nextbillion.ai)
- Submit an Issue to this repository
- Request a demo: [Book a Demo](https://nextbillion.ai/book-a-demo)

## 📄 License

See the [LICENSE](LICENSE) file for details.

---

**Made with ❤️ by NextBillion.ai**
