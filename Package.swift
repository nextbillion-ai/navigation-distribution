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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.3.0/NbmapNavigation.xcframework.zip",
            checksum: "093a82c4281cd3fb9d7b14fe0eb1aafa99b013a38d671a9253ccf7143928ac3e"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.3.0/NbmapCoreNavigation.xcframework.zip",
            checksum: "43cac0a3191cbdb46ea2ae2d87f1479233f27a24ee3e9283c4b04e116cb0f508"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.1.5/Nbmap.xcframework.zip",
            checksum: "e19a1e0a3a92344fca69bb319f8eecae79c4e2d94b36f9993d791e06480fd7d2"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/Turf.xcframework.zip",
            checksum: "1302f517c75d356137430a15be7890686a23ac247501f46d03ba9fe972f56623"
        )
    ]
)

