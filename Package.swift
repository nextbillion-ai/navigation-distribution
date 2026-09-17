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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.0.0/NbmapNavigation.xcframework.zip",
            checksum: "1b07f12c4598bd5e44dd4bd999e5cf2503cbee9af638b951a812b97a17407c95"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/4.0.0/NbmapCoreNavigation.xcframework.zip",
            checksum: "dd77cd4e682538914c60ccaa0ff1f64a49b0c74c9289b947548c9b1d8b79c993"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.2.0/Nbmap.xcframework.zip",
            checksum: "a4b27996e3bb686a1b35324b5c2f9d50e319735e22d0ceebbbbba0cf56a2da87"
        ),
        .binaryTarget(
            name: "Turf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/Turf.xcframework.zip",
            checksum: "8f0108b812a17892bd650cf58e5fb1e842e2678f94e8f080e65ec5c9659a8b64"
        )
    ]
)

