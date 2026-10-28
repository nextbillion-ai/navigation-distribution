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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.2/NbmapNavigation.xcframework.zip",
            checksum: "bcdf6e0872cde53fe1c356782213de4b027710e94ae21459d2982d5b93d297e0"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.1.2/NbmapCoreNavigation.xcframework.zip",
            checksum: "a452f48355c71e6b10398bb8a26141bb2d586aae21b8a5e97e9edbcc536fc0ae"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.3.0/Nbmap.xcframework.zip",
            checksum: "7825293f4d76d5d9a79cbc921a7186bff913c64e3bbd08d1fff5a18342559c0b"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/Turf.xcframework.zip",
            checksum: "8f0108b812a17892bd650cf58e5fb1e842e2678f94e8f080e65ec5c9659a8b64"
        )
    ]
)

