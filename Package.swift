// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "NMapsMap",
    defaultLocalization: "ko",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "NMapsMap",
            targets: [
                "NMapsMap",
                "NMapsGeometry"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            url: "https://github.com/jaemyeong/NMapsMap/releases/download/3.16.2/NMapsMap.xcframework.zip",
            checksum: "137f99021527b07b7735a670e2c5592c2c453f9c78efc69293d3bc6fe742f7e0"
        ),
        .binaryTarget(
            name: "NMapsGeometry",
            url: "https://github.com/jaemyeong/NMapsGeometry/releases/download/1.0.1/NMapsGeometry.xcframework.zip",
            checksum: "5b2440242ed4a7e18b941b4e491a8899e980a68a00a039323ca9c4ac5dd77613"
        ),
    ]
)
