// swift-tools-version:5.9
import PackageDescription
let package = Package(
  name: "OpenCombineJS",
  platforms: [.macOS(.v14)],
  products: [
    .executable(name: "OpenCombineJSExample", targets: ["OpenCombineJSExample"]),
    .library(name: "OpenCombineJS", targets: ["OpenCombineJS"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/Grubl0rd/JavaScriptKit.git",
      branch: "main"
    ),
    .package(
        url: "https://github.com/OpenCombine/OpenCombine.git",
        branch: "master"
    ),
  ],
  targets: [
    .target(
      name: "OpenCombineJSExample",
      dependencies: [
        "OpenCombineJS",
      ]
    ),
    .target(
      name: "OpenCombineJS",
      dependencies: [
        "JavaScriptKit", "OpenCombine",
      ]
    ),
  ]
)
