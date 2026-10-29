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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.3/NbmapNavigation.xcframework.zip",
            checksum: "2bd1417b4908ae9a4a75c3663704d68c3ea7c353c404f339d8d32dceb1a19bd8"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.3/NbmapCoreNavigation.xcframework.zip",
            checksum: "78cb35dd85fa7fe083406dc98e73db9b3b4d741e6a80b6f0b29fa5c5fe6d78b1"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.3.1/Nbmap.xcframework.zip",
            checksum: "916a867a99b805fa824269378ff4983284cfbec0146f88aa477f66e66c39996e"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/Turf.xcframework.zip",
            checksum: "8f0108b812a17892bd650cf58e5fb1e842e2678f94e8f080e65ec5c9659a8b64"
        )
    ]
)

