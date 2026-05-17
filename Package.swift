// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Nextbillion Navigation",
    products: [
        .library(
            name: "NbmapNavigation",
            targets: ["NbmapNavigation","NbmapCoreNavigation","Nbmap","NBTurf"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NbmapNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.3.1/NbmapNavigation.xcframework.zip",
            checksum: "bd8a260c519b5f515c05307c538444d7817a269cda723417fc0fadd88f322d24"
        ),
        .binaryTarget(
            name: "NbmapCoreNavigation",
            url: "https://github.com/nextbillion-ai/nextbillion-navigation-ios/releases/download/3.3.1/NbmapCoreNavigation.xcframework.zip",
            checksum: "7e7574dff11500a7884a6bc513716806e710c4eac08ff7c7e5e2c2d10baee3da"
        ),
        .binaryTarget(
            name: "Nbmap",
            url: "https://github.com/nextbillion-ai/nextbillion-map-ios/releases/download/2.1.5/Nbmap.xcframework.zip",
            checksum: "e19a1e0a3a92344fca69bb319f8eecae79c4e2d94b36f9993d791e06480fd7d2"
        ),
        .binaryTarget(
            name: "NBTurf",
            url: "https://github.com/nextbillion-ai/nextbillion-turf-ios/releases/download/3.0.1/NBTurf.xcframework.zip",
            checksum: "1302f517c75d356137430a15be7890686a23ac247501f46d03ba9fe972f56623"
        )
    ]
)

