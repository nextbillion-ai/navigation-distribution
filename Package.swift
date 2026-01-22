// swift-tools-version: 5.3
import PackageDescription

let package = Package(
    name: "Nextbillion Navigation",
    products: [
        .library(
            name: "NbmapNavigation",
            targets: ["NbmapNavigation","NbmapCoreNavigation","Nbmap"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NbmapNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.1.3/NbmapNavigation.xcframework.zip",
            checksum: "942b308965bd47ced888281fdc8244bc997bc49a71f28d914601a191404bc9d7"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.1.3/NbmapCoreNavigation.xcframework.zip",
            checksum: "4f96b15d1957a50a713646415ad4879b4e15d44dc5d3e1e73f2a7c0aa211cc89"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.0.2/Nbmap.xcframework.zip",
            checksum: "7ef1deb44afc16649bc53429bc1394ca35e52d6112d3d8e314cbbe789ef4369a"
        )
    ]
)

