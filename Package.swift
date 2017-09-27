// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "PostgreSQLProvider",
    products: [
        .library(name: "PostgreSQLProvider", targets: ["PostgreSQLProvider"])
    ],
    dependencies: [
        .package(url: "https://github.com/damirstuhec/postgresql-driver.git", .upToNextMajor(from: "2.0.5")),
        .package(url: "https://github.com/vapor/fluent-provider.git", .upToNextMajor(from: "1.2.0")),
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.2.2"))
    ],
    targets: [
        .target(name: "PostgreSQLProvider", dependencies: ["PostgreSQLDriver", "FluentProvider", "Vapor"]),
        .testTarget(name: "PostgreSQLProviderTests", dependencies: ["PostgreSQLProvider"])
    ]
)
