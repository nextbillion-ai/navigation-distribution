// swift-tools-version: 5.3
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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.2.0/NbmapNavigation.xcframework.zip",
            checksum: "093a82c4281cd3fb9d7b14fe0eb1aafa99b013a38d671a9253ccf7143928ac3e"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.2.0/NbmapCoreNavigation.xcframework.zip",
            checksum: "43251e2cdc07eec6d46ff391dc255a8b0140fba80330cfa9ed3d5bca9f5f9b15"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.1.2/Nbmap.xcframework.zip",
            checksum: "0f48b5cd6af5157296ecea043eb08515f42d524f701e80e02a1fe29ec2089636"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/Turf.xcframework.zip",
            checksum: "086e1ca86c2ba5e3e5b8bdd6811d5bebd26653aa2033bc98da0a7d21dcc3c7a3"
        )
    ]
)

