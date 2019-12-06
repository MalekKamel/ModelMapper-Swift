// swift-tools-version:5.0
import PackageDescription

let buildTests = false

let package = Package(
        name: "ModelMapper",
        products: [
            .library(name: "ModelMapper", targets: ["ModelMapper"])
        ],
        dependencies: [],
        targets: [
            .target(
                    name: "ModelMapper",
                    dependencies: [],
                    path: "Sources",
                    exclude: ["Tests", "Examples"])
        ]
)in
