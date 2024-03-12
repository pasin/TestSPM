// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "CouchbaseLiteSwift",
    platforms: [
        .iOS(.v12), .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "CouchbaseLiteSwift Enterprise",
            targets: ["CouchbaseLiteSwift"]),
        .library(
            name: "CouchbaseLiteSwift Community",
            targets: ["CouchbaseLiteSwift-CE"])
    ],
    targets: [
        .binaryTarget(
            name: "CouchbaseLiteSwift-EE",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.1.6/couchbase-lite-swift_xc_enterprise_3.1.6.zip",
            checksum: "c5e870fa7ba491293bcf405d3da94b945d2c23aa63e683b4b61841435a9c332e"
        ),
        .binaryTarget(
            name: "CouchbaseLiteSwift-CE",
            url: "https://packages.couchbase.com/releases/couchbase-lite-ios/3.1.0/couchbase-lite-swift_xc_community_3.1.0.zip",
            checksum: "556d6ae41df3b5ebf91dbe45d38214dd7032f97ac1b132f925356d20e3b9ada5"
        )
    ]
)