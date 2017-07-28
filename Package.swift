// swift-tools-version:3.1

import PackageDescription


let package = Package(
    name: "lorem",
    dependencies: [
        .Package(url: "https://github.com/Longhanks/qlift", Version(0, 0, 36))
    ]
)
