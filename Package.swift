// swift-tools-version: 5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleMaps",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GoogleMapsCore",
            targets: ["GoogleMapsCore"]
        ),
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMapsBase",
            targets: ["GoogleMapsBase"]
        ),
        .library(
            name: "GoogleMapsM4B",
            targets: ["GoogleMapsM4B"]
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "GoogleMapsCore",
            path: "Maps/Frameworks/GoogleMapsCore.xcframework"
        ),
        .binaryTarget(
            name: "GoogleMaps",
            path: "Maps/Frameworks/GoogleMaps.xcframework"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            path: "Base/Frameworks/GoogleMapsBase.xcframework"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            path: "M4B/Frameworks/GoogleMapsM4B.xcframework"
        )
    ]
)
