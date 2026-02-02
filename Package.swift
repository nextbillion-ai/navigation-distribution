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
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.1.4/NbmapNavigation.xcframework.zip",
            checksum: "942b308965bd47ced888281fdc8244bc997bc49a71f28d914601a191404bc9d7"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.1.4/NbmapCoreNavigation.xcframework.zip",
            checksum: "896ea6f87721779dc4853855fbaa2c9a7a6653b306fa95e931e743c9ca2aa212"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.0.2/Nbmap.xcframework.zip",
            checksum: "7ef1deb44afc16649bc53429bc1394ca35e52d6112d3d8e314cbbe789ef4369a"
        )
    ]
)

