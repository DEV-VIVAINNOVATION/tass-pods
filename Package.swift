// swift-tools-version: 5.7
import PackageDescription

let package = Package(
  name: "TassPods",
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
    .library(
      name: "NaverThirdPartyLogin",
      targets: [
        "NaverThirdPartyLogin",
      ]
    ),
  ],
  targets: [
    .binaryTarget(
      name: "NMapsMap",
      url: "https://github.com/DEV-VIVAINNOVATION/tass-pods/releases/download/1.0.0/NMapsMap.xcframework.zip",
      checksum: "eef16eed21cc18e8789dc622ff0e723b7e13398fdc965a36289bcba19a3cefe2"
    ),
    .binaryTarget(
      name: "NMapsGeometry",
      url: "https://github.com/DEV-VIVAINNOVATION/tass-pods/releases/download/1.0.0/NMapsGeometry.xcframework.zip",
      checksum: "0567dfbc378d940da87925e5389184ff6db7af7039fe0816a3093efd40e4091a"
    ),
    .binaryTarget(
      name: "NaverThirdPartyLogin",
      url: "https://github.com/DEV-VIVAINNOVATION/tass-pods/releases/download/1.0.0/NaverThirdPartyLogin.xcframework.zip",
      checksum: "7d56278cd14d4f30503e613c093304ffa5dacd76a4ea37d2642967fd1035eed2"
    ),
  ]
)
