// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Nextbillion Navigation",
    products: [
        .library(
            name: "NbmapNavigation",
            targets: ["NbmapNavigation","NbmapCoreNavigation","Nbmap","Turf"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NbmapNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.2.0-beta.2/NbmapNavigation.xcframework.zip",
            checksum: "1bec9a89ee56d886dd58f08423875829e299ea27444c8395a51552d9abd8db95"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.2.0-beta.2/NbmapCoreNavigation.xcframework.zip",
            checksum: "63461cfd3c0d5d9441a114377b46d07701f18e744c5998f9cbaee3d3cda8a400"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.4.0-beta.3/Nbmap.xcframework.zip",
            checksum: "bc9bce2bc0f200dbbe78870f65a62fdf20e8f876c3798b92028de868b536ade4"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/Turf.xcframework.zip",
            checksum: "8f0108b812a17892bd650cf58e5fb1e842e2678f94e8f080e65ec5c9659a8b64"
        )
    ]
)

