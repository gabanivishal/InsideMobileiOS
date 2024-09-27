// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "InsideMobileiOS",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "InsideMobileiOS",
            targets: ["InsideMobileiOS"])
    ],
    targets: [
        .binaryTarget(
            name: "InsideMobileiOS",
            path: "InsideMobileiOS.xcframework")
    ])
